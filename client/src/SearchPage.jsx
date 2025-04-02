import React, { useState, useEffect } from 'react';
import { useLocation } from 'react-router';
import {
  Button,
  Spinner,
  Card,
  CardHeader,
  CardFooter,
  Text,
  Link,
  SearchBox,
  Tag,
  TeachingPopover,
  TeachingPopoverBody,
  TeachingPopoverHeader,
  TeachingPopoverTitle,
  TeachingPopoverSurface,
  TeachingPopoverTrigger,
  TeachingPopoverFooter,
} from '@fluentui/react-components';
import { Alert12Filled, AlertOn16Filled, Note16Filled, Search24Regular, Warning12Filled, Warning16Color, Warning20Color } from '@fluentui/react-icons';
import ReactMarkdown from 'react-markdown';
import Cookies from 'js-cookie';

import styles from './assets/styles/SearchPage.module.css'; 

import GitHash from './components/GitVersion';
import PageTitle from './components/PageTitle';

let pageStatus = "first_load";

const SearchPage = () => {
  const [searchCompleted, setSearchCompleted] = useState(false);
  const [query, setQuery] = useState('');
  const [results, setResults] = useState([]);
  const [loading, setLoading] = useState(false);
  const [error, setError] = useState([]);
  const location = useLocation();
  const [popOverOpen, setPopOverOpen] = useState(false);

  useEffect(() => {
    const params = new URLSearchParams(location.search);
    const q = params.get('q');
    //console.log('Query:', q);
    if (q) {
      setQuery(q);
      handleSearch(q);
    } else {
      getLatestSamples();
    }
  }, [location]);

  //console.log('PopOverOpen:', Cookies.get('popOverOpen'));
  if (!Cookies.get('popOverOpen'))
    setPopOverOpen(true);
  Cookies.set('popOverOpen', 'true', { expires: 30 });

  const getLatestSamples = async () => {
    try {
      const response = await fetch('./data-api/rest/latestSamples');
      if (response.ok) {
        const data = await response.json();
        //console.log(data.value);
        setResults(data.value);
      } else {
        //console.log(response);
        setError([{ code: response.status, description: response.statusText }]);
      }
      pageStatus = "latest_samples";
    } catch (error) {
      setError([{ code: error.code, description: error.message }]);
      console.log(error);
    }
  }

  const getError = (result) => {
    let responseStatus = { code: 0, description: '' };

    if (result.error != null) {
      responseStatus = {
        code: result.error.status,
        description: result.error.message
      }
    }
    //console.log("Result", result);

    if (result.value != null && result.value.length > 0 && result.value[0].error != null) {
      let errorDetails = JSON.parse(result.value[0].error);
      //console.log("ErrorDetails", errorDetails);
      responseStatus = {
        source: errorDetails.error,
        code: errorDetails.error_code,
        description: errorDetails.error_message
      }
    }

    //console.log("ResponseStatus", responseStatus);
    return responseStatus;
  }

  const handleSearch = async (searchQuery) => {
    if ((!query) && (!searchQuery)) return;
    if (!searchQuery) {
      searchQuery = query;
    }
    setLoading(true);
    setError([]);
    setResults([]);
    setSearchCompleted(false);
    //console.log('searchQuery:', searchQuery);
    try {
      const response = await fetch('./data-api/rest/findSamples', {
        method: 'POST',
        headers: {
          'Content-Type': 'application/json'
        },
        body: JSON.stringify({ text: searchQuery })
      });
      const data = await response.json();
      let errorStatus = getError(data);
      if (errorStatus.code != 0) {
        setError([errorStatus]);
      } else {
        setResults(data.value);
      }
    } catch (error) {
      console.log(error);
      setError([{ code: error.code, description: error.message }]);
    } finally {
      setLoading(false);
      setSearchCompleted(true);
    }
  };

  const handleKeyPress = (event) => {
    if (event.key === 'Enter') {
      handleSearch();
    }
  };

  const handleSearchClick = () => {
    console.log('Search button clicked');
    handleSearch();
  }

  const handleOpenLink = (event, result) => {
    window.open(result.url, '_blank', 'noopener,noreferrer');
  }

  const handleGoToGithub = () => {
    window.open("https://github.com/yorek/azure-sql-db-ai-samples-search", '_blank', 'noopener,noreferrer');
  }

  if (results != null) {
    if (results.length === 0 && loading == true) pageStatus = "searching";
    if (results.length === 0 && !loading && searchCompleted) pageStatus = "no_results";
    if (results.length > 0 && !loading && searchCompleted) pageStatus = "results_found";
  }
  if (error.length > 0) pageStatus = "error";

  console.log('Page Status:', pageStatus);
  //console.log('Search Completed:', searchCompleted);

  return (
    <>
      <PageTitle />
      
      <div className={styles.buttonsArea}>
        <TeachingPopover defaultOpen={popOverOpen}>
          <TeachingPopoverTrigger>
            <Button>How does it work?</Button>
          </TeachingPopoverTrigger>
          <TeachingPopoverSurface className={styles.popOverSurface}>
            <TeachingPopoverHeader>Tips</TeachingPopoverHeader>
            <TeachingPopoverBody>
              <TeachingPopoverTitle>AI Agent Powered Search</TeachingPopoverTitle>
              <div>
                この検索エンジンは、AI エージェントを活用して、過去に作成されたサンプルの中から 
                <a href="https://github.com/Azure-Samples?q=azure-sql" target="_blank">Azure SQL Database Samples リポジトリ</a> および 
                <a href="https://aka.ms/sqlai-samples" target="_blank">Azure SQL AI Samples</a> にあるものを検索し、
                <strong>構造化出力を使った RAG パターン</strong>で提供します。
                <ul>
                  <li>入力されたテキストは <strong>AI エージェント</strong> に渡され、「類似検索」または「SQL クエリの生成と実行」のどちらのツールを使うかが判断されます。</li>
                  <li>類似検索は、<a href="https://devblogs.microsoft.com/azure-sql/exciting-announcement-public-preview-of-native-vector-support-in-azure-sql-database/" target="_blank">Azure SQL Database に新たに導入されたベクトル検索機能</a> を使って、すべてのリソースに対して行われます。</li>
                  <li>結果は GPT-4o モデルに渡され、<a href="https://learn.microsoft.com/en-us/azure/ai-services/openai/how-to/structured-outputs?tabs=rest" target="_blank">構造化出力</a> に従って、サンプルの要約と考察が生成されます。</li>
                  <li><strong>セマンティックキャッシング</strong>を使用することで、検索エンジンのパフォーマンスが向上し、LLM の呼び出しコストが削減されます。</li>
                </ul>
                このサンプルの詳細を知りたい方やソースコードを取得したい方は、「このエージェント型 AI サンプル」や「この Web サイトのサンプル」について質問してください。  
                Azure SQL で AI アプリを構築する方法については以下をご覧ください：  
                <a href="https://aka.ms/sqlai" target="_blank">https://aka.ms/sqlai</a>
              </div>

            </TeachingPopoverBody>
            <TeachingPopoverFooter primary="Got it" />
          </TeachingPopoverSurface>
        </TeachingPopover>

        <Button onClick={handleGoToGithub} target="_blank">Go to GitHub Repo</Button>
      </div>        
      
      <GitHash />
      
      <div className={styles.searchWrapper}>
        <SearchBox
          placeholder="Type your query in natural language. The AI will do the rest..."
          value={query}
          onChange={(e) => setQuery(e.target.value)}
          onKeyDown={handleKeyPress}
          contentBefore={<Search24Regular />}
          appearance="outline"
          className={styles.searchBox}
        />
        <Button
          appearance="primary"
          onClick={handleSearchClick}
          disabled={loading}
          className={styles.searchButton}
        >
          Search
        </Button>
      </div>
      
      <Text block style={{ textAlign: 'center', marginBottom: '20px' }}>
        <Alert12Filled /> <strong>Tip:</strong> 次のように質問してみてください：『2024年の Orlando Live 360 で使われたサンプルは？』.
        <br />
        <Warning12Filled/> <strong>Warning!</strong> このサンプルは無料の Azure OpenAI SKU を使用しているため、ピーク時にはスロットリングや 500 エラーが発生する可能性があります。.      
      </Text>

      {(pageStatus == "searching") && (
        <div style={{ textAlign: 'center', margin: '20px 0' }}>
          <Spinner label="Searching..." />
        </div>
      )}

      {(pageStatus == "error") && (
        <Text block style={{ textAlign: 'center', color: 'red', marginBottom: '20px' }}>
          Source: "{error[0].source}" - Code: "{error[0].code}"<br/>{error[0].description}
        </Text>
      )}

      {(pageStatus === "first_load") &&
        (
          <Text block style={{ textAlign: 'center' }}>
            Loading latest samples...
          </Text>
        )
      }

      {(pageStatus === "latest_samples") &&
        (
          <Text block style={{ textAlign: 'center' }}>
            検索を開始して結果を表示するか、以下の最新サンプルをご覧ください。
          </Text>
        )
      }

      {(pageStatus === "no_results") &&
        (
          <Text block style={{ textAlign: 'center' }}>
            No results found. Please try another query.
          </Text>
        )
      }

      {(pageStatus === "results_found" || pageStatus === "latest_samples") &&
        (         
          <div className={pageStatus === "results_found" ? styles.results : styles.latests}>
            {
              results.map((result, index) => {
                return (
                  <Card key={index} className={styles.resultCard}>
                    <CardHeader
                      header={
                        <div className={styles.resultCardHeader}>
                          {result.name}
                        </div>
                      }
                      description={
                        <div>
                          <div className={styles.resultDescription}>
                            <ReactMarkdown>
                              {result.sample_summary}
                            </ReactMarkdown>
                          </div>
                          <div className={styles.resultThoughts}>
                            {result.thoughts}
                          </div>
                        </div>
                      }
                    />
                    <CardFooter className={styles.resultCardFooter}>
                      <Button onClick={(event) => handleOpenLink(event, result)}>Open Link</Button>
                    </CardFooter>
                  </Card>
                );
              })
            }
          </div>
        )}
    </>
  );
};

export default SearchPage;
