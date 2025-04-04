-- // 機能は変えずに、description と notes の内容を日本語にしてください。

exec dbo.add_sample N'
{
    "name": "Azure SQL DB Vectorizer", 
    "description": "Azure SQL のデータから埋め込みを迅速に生成するツール", 
    "url": "https://github.com/Azure-Samples/azure-sql-db-vectorizer",
    "notes": "Azure SQL のデータから埋め込みを迅速に生成するツールです。テキストを含むテーブルを指定し、.env ファイルを設定してツールを実行することで、テキストを埋め込みに変換します。埋め込みは OpenAI API を使用して生成され、Azure SQL データベースに保存されます。テキストが大きすぎる場合は分割され、API に送信されます。分割は Microsoft.SemanticKernel.Text パッケージの TextChunker.SplitPlainTextParagraphs メソッドを使用し、最大トークン数は 2048 に設定されています。埋め込みは専用のテーブルに保存され、元のテーブルと 1:N の関係を持ちます。データは 5000 行ずつバッチ処理され、複数スレッドで効率的に処理されます。",
    "details": {
        "author": "Davide Mauri",
        "languages": [".NET"],
        "license": "MIT",
        "services": ["Azure SQL"],
        "tags": ["Azure", "SQL", "Embeddings", "Vectorizer"]
    }
}
';

exec dbo.add_sample N'
{
    "name": "PASS 2024 Demos", 
    "description": "PASS Summit 2024 で使用されたデモ", 
    "url": "https://github.com/yorek/pass-2024",
    "notes": "PASS 2024 の SQL AI ワークショップ (.NET + Semantic Kernel および Python + LangChain + ChainLit) とセッション \"Unlocking the Power of Azure SQL Database: AI, Elastic Pools, and Beyond\" で使用されたサンプルが含まれています。",
    "details": {
        "author": "Davide Mauri",
        "languages": ["T-SQL", ".NET", "Python"],
        "services": ["Azure SQL"],
        "license": "MIT",
        "conferences": ["PASS Summit 2024"]        
    }
}
';

exec dbo.add_sample N'
{
    "name": "Million Song Dataset in Azure SQL DB / SQL Server", 
    "description": "Azure SQL DB または SQL Server (2017+) に Million Song Dataset をインポートして、楽曲のレコメンデーションサービスを構築する方法", 
    "url": "https://github.com/azure-samples/millionsongdataset-sql",
    "notes": "Azure SQL および SQL Server のグラフモデル (Edge および Nodes テーブル) を使用して Million Song Dataset を操作し、楽曲のレコメンデーションサービスを構築します。",
    "details": {
        "author": "Arvind Shyamsundar",
        "languages": ["T-SQL"],
        "services": ["Azure SQL"],
        "license": "MIT"        
    }
}
';

exec dbo.add_sample N'
{
    "name": "Azure SQL DB Import Data Samples", 
    "description": "Azure SQL にデータ (フラットファイル、CSV、JSON) をインポートする方法のサンプル", 
    "url": "https://github.com/Azure-Samples/azure-sql-db-import-data",
    "notes": "BCP、BULK INSERT、OPENROWSET、dbatools の Write-DbaDbTableData を使用して Azure SQL DB にデータをインポートするためのスクリプトセット。",
    "details": {
        "author": "Davide Mauri",
        "languages": ["T-SQL"],
        "services": ["Azure SQL"],
        "license": "MIT",        
        "related-repos": [{
                "name": "Fast Data Loading in Azure SQL DB using Azure Databricks",
                "url": "https://github.com/Azure-Samples/azure-sql-db-databricks"
           }
        ]
    }
}
';

exec dbo.add_sample N'
{
    "name": "Azure SQL + Azure Cognitive Services", 
    "description": "Amazon 製品レビューの SQL テーブルに基づいてユーザーのクエリに応答する AI アプリケーションの例", 
    "url": "https://github.com/Azure-Samples/SQL-AI-samples/blob/main/AzureSQLACSSamples/src/AzureSQL_CogSearch_IntegratedVectorization.ipynb",
    "notes": "AzureSQL_CogSearch_IntegratedVectorization サンプルノートブックは、ユーザーレビューのデータベースを使用して製品を推薦するシンプルな AI アプリケーションを示します。Azure Cognitive Search の新しいプレビュー機能である自動チャンク化と統合ベクトル化を活用しています。",
    "details": {
        "languages": ["T-SQL", "Python"],
        "services": ["Azure SQL", "Azure Cognitive Services"],        
        "license": "MIT"        
    }
}
';

exec dbo.add_sample N'
{
    "name": "Azure SQL + Azure Promptflow", 
    "description": "Azure SQL Promptflow デモのコードリポジトリです。独自の Azure SQL データベースからデータをクエリするチャットボットを作成する方法を示します。", 
    "url": "https://github.com/Azure-Samples/SQL-AI-samples/blob/main/AzureSQLACSSamples/src/AzureSQL_CogSearch_IntegratedVectorization.ipynb",
    "description": "This is the code repository for Azure SQL Promptflow Demo. It demonstrates how to create a chatbot that can query the data from your own Azure SQL database.", 
    "url": "https://github.com/Azure-Samples/SQL-AI-samples/blob/main/AzureSQLACSSamples/src/AzureSQL_CogSearch_IntegratedVectorization.ipynb",
    "notes": "The AzureSQL_Prompt_Flow sample shows an E2E example of how to build AI applications with Prompt Flow, Azure Cognitive Search, and your own data in Azure SQL database. It includes instructions on how to index your data with Azure Cognitive Search, a sample Prompt Flow local development that links everything together with Azure OpenAI connections, and also how to create an endpoint of the flow to an Azure ML workspace.",
    "details": {
        "languages": ["T-SQL", "Python"],
        "services": ["Azure SQL", "Azure Promptflow"],
        "license": "MIT"        
    }
}
';
exec dbo.add_sample N'
{
    "name": "Vector similarity search with Azure SQL & Azure OpenAI", 
    "description": "この例では、Azure SQL データベースから Azure OpenAI を使用して任意のテキストのベクトル埋め込みを取得し、すでに計算された Wikipedia 記事のベクトル埋め込みとコサイン類似度を計算して、提供されたテキストに近い、または類似したトピックをカバーする記事を見つける方法を示します。", 
    "url": "https://github.com/Azure-Samples/azure-sql-db-openai",
    "notes": "このサンプルは最近ハイブリッド検索で強化され、Wikipedia サンプルデータセットでフルテキスト検索、BM25、相互ランク融合 (RRF) を使用して検索結果を改善する方法を示しています。",
    "details": {
        "languages": ["T-SQL", "Python"],
        "services": ["Azure SQL"],
        "license": "MIT",      
        "tags": ["RRF", "Reciprocal Ranking Fusion", "BM25", "Fulltext", "Hybrid Search"],  
        "conferences": ["VS Live 2025 Las Vegas"]
    }
}
';

exec dbo.add_sample N'
{
    "name": "Generating SQL for Azure SQL Database using Vanna.AI", 
    "description": "このノートブックでは、vanna Python パッケージを使用して SQL を生成するプロセス (RAG + LLMs を含む) を実行し、データベースへの接続やトレーニングを行う方法を説明します。", 
    "url": "https://github.com/Azure-Samples/SQL-AI-samples/blob/main/AzureSQLDatabase/Vanna.ai/vanna_and_sql.ipynb",
    "details": {
        "author": "Brian Spendolini",
        "languages": ["T-SQL", "Python"],
        "services": ["Azure SQL"],
        "license": "MIT",        
        "related-links": {
            "blog": "https://devblogs.microsoft.com/azure-sql/vanna-ai-and-azure-sql-database/"
        },
        "tags": ["NL2SQL", "Natural Language to SQL"]
    }
}
';

exec dbo.add_sample N'
{
    "name": "Azure SQL DB - Retrieval Augmented Generation (RAG) with OpenAI", 
    "description": "RAG ソリューションを実装し、Azure SQL DB から直接 OpenAI を呼び出してデータに関する質問を行う方法を示します。", 
    "notes": "このリポジトリでは、Azure SQL データベースを使用して Retrieval Augmented Generation (RAG) を実行し、Azure SQL にあるデータを使用して OpenAI と統合する方法をステップバイステップで説明しています。Azure SQL データベース内のデータを使用して、自然言語でクエリを行い、OpenAI GPT モデルから回答を得ることができます。サンプルデータは Walmart US Product データセットを使用しており、\"10代の男の子の誕生日パーティーを整理するのに良い商品は何ですか？\" や \"車を掃除するのに最適な商品を教えてください\" などの質問を行い、OpenAI モデルから回答を得ることができます。このサンプルは純粋に T-SQL のみを使用しています。",
    "url": "https://github.com/Azure-Samples/azure-sql-db-chatbot",
    "details": {
        "authors": ["Davide Mauri", "Sanjay Mishra"],
        "languages": ["T-SQL"],
        "services": ["Azure SQL"],
        "license": "MIT",        
        "related-links": {
            "blog": "https://devblogs.microsoft.com/azure-sql/unleashing-the-potential-of-generative-ai-in-azure-sql-database/"
        }
    }
}
';

exec dbo.add_sample N'
{
    "name": "Content Moderation", 
    "description": "このフォルダーには、Azure OpenAI Content Safety と Language AI を呼び出す 2 つの T-SQL スクリプトが含まれています。Content Safety の例では、テキスト文字列を分析し、暴力、性的表現、自傷行為、憎悪の 4 つのカテゴリで深刻度を返します。Language AI スクリプトでは、テキストを分析して検出された PII (個人を特定できる情報) のカテゴリを返し、元のテキスト文字列内の PII を隠すために結果を編集します。",
    "url": "https://github.com/Azure-Samples/SQL-AI-samples/tree/main/AzureSQLDatabase/ContentModeration",
    "details": {
        "languages": ["T-SQL"],
        "services": ["Azure SQL"],
        "license": "MIT"
    }
}
';

exec dbo.add_sample N'
{
    "name": "LangChain and Azure SQL Database", 
    "description": "このフォルダーには、LangChain を使用して Azure SQL Database に対して NL2SQL エージェントを作成する 2 つの Python ノートブックが含まれています。ノートブックでは、LLM に Azure OpenAI または OpenAI を使用します。すぐに始めるには、このリポジトリでコードスペースを作成し、ターミナルを使用して LangChain ディレクトリに移動し、ノートブックのいずれかを実行してください。",
    "url": "https://github.com/Azure-Samples/SQL-AI-samples/tree/main/AzureSQLDatabase/LangChain",
    "details": {
        "languages": ["T-SQL"],
        "services": ["Azure SQL"],
        "license": "MIT",
        "tags": ["NL2SQL", "Natural Language to SQL"]
    }
}
';

exec dbo.add_sample N'
{
    "name": "Similar Content Finder", 
    "description": "OpenAI、Azure Functions、Azure Static Web Apps、Azure SQL DB、Data API Builder、およびテキスト埋め込みを使用してレコメンダーを構築します。",
    "notes": "OpenAI の埋め込み (ベクトル) を使用して類似検索を実行し、顧客により良いユーザーエクスペリエンスや検索結果を提供するソリューションを作成できます。このサンプルでは、会議セッションのレコメンダーを作成しています。",
    "url": "https://github.com/Azure-Samples/azure-sql-db-session-recommender",
    "details": {
        "author": "Davide Mauri",
        "languages": ["T-SQL"],
        "services": ["Azure SQL", "Azure Functions", "Azure Static Web Apps"],
        "tools": ["Data API Builder"],
        "license": "MIT",
        "tags": ["End-to-End"]
    }
}
';

exec dbo.add_sample N'
{
    "name": "Session Conference Assistant", 
    "description": "OpenAI、Azure Functions、Azure Static Web Apps、Azure SQL DB、Data API Builder、およびテキスト埋め込みを使用して、会議参加者が最適なセッションを見つけるのを支援する Retrieval Augmented Generation ソリューションを構築します。このサンプルは「Similar Content Finder」の改良版です。",
    "notes": "このサンプルでは、Jamstack、Retrieval Augmented Generation (RAG)、およびイベント駆動型アーキテクチャを使用してセッションアシスタントを構築する方法を示します。Azure SQL DB を使用してベクトル埋め込みを保存および検索し、Azure Static Web Apps、Azure Functions、Azure SQL Database、Azure OpenAI を使用してソリューションを構築します。完全に動作するプロダクション対応のバージョンは、VS Live 会議で使用され、以下で利用可能です: https://ai.microsofthq.vslive.com/。デプロイメントは AZD (Azure Developer CLI) を使用して行われるため、このサンプルは AZD を使用した Azure Static Web Apps と Data API Builder のデプロイメントを学ぶための良い参考資料にもなります。",
    "url": "https://github.com/azure-samples/azure-sql-db-session-recommender-v2",
    "details": {
        "author": "Davide Mauri",
        "languages": ["T-SQL"],
        "services": ["Azure SQL", "Azure Functions", "Azure Static Web Apps"],        
        "license": "MIT",
        "tools": ["AZD", "Data API Builder"],
        "tags": ["End-to-End", "RAG"],
        "related-links": {
            "live-demo": "https://ai.microsofthq.vslive.com/"
        }
    }
}
';

exec dbo.add_sample N'
{
    "name": "Chatbot on your own data with LangChain and Chainlit", 
    "description": "Azure SQL DB、LangChain、Chainlit を使用したサンプル RAG パターン",
    "notes": "Azure SQL DB、LangChain、Chainlit を使用したサンプル RAG パターンで、#RAGHack 会議でデモンストレーションされました。詳細とビデオ記録はこちらで利用可能です: https://github.com/microsoft/RAG_Hack/discussions/53。",
    "url": "https://github.com/Azure-Samples/azure-sql-db-rag-langchain-chainlit",
    "details": {
        "author": "Davide Mauri",
        "languages": ["T-SQL", "Python"],
        "frameworks": ["LangChain", "ChainLit"],
        "services": ["Azure SQL", "Azure Open AI", "Azure Functions"],
        "license": "MIT",
        "tags": ["End-to-End"],
        "related-links": {
            "blog": "https://devblogs.microsoft.com/azure-sql/build-a-chatbot-on-your-own-data-in-1-hour-with-azure-sql-langchain-and-chainlit/"
        }
    }
}
';

exec dbo.add_sample N'
{
    "name": "Chatbot on structured and unstructured data with Semantic Kernel", 
    "description": "Azure SQL と Semantic Kernel を使用して、NL2SQL と RAG を組み合わせて独自のデータと対話するチャットボットを構築します。",
    "notes": "このサンプルでは、RAG を使用して質問に回答したり、SQL クエリを使用して構造化データに関する質問に回答したりするチャットボットを構築する方法を示します。たとえば、「製品 XYZ に関して一般的に挙げられる問題は何ですか？」や「カナダからの顧客でサポートラインに電話した人数は？」といった質問に対応します。Semantic Kernel を使用して構築されています。このサンプルでは、架空の保険会社 Contoso Insurance のためのエージェント型 RAG ソリューションを構築する方法も示しています。",
    "url": "https://github.com/Azure-Samples/azure-sql-db-chat-sk",
    "details": {
        "author": "Davide Mauri",
        "languages": ["T-SQL", "C#", ".NET"],
        "frameworks": ["Semantic Kernel"],
        "services": ["Azure SQL", "Azure Functions", "Azure Static Web Apps"],
        "license": "MIT",
        "tags": ["End-to-End", "Agentic RAG", "NL2SQL", "Natural Language to SQL"],
        "conferences": ["VS Live 2025 Las Vegas", "PASS Summit 2024", "Live 360 Orlando 2024", "MCAPS Tech Connect 2025"],
        "related-links": {
            "video": "https://www.youtube.com/watch?v=BuaKzm7Kq9Q",
            "blog": "https://devblogs.microsoft.com/azure-sql/the-ultimate-chatbot/"
        }
    }
}
';

exec dbo.add_sample N'
{
    "name": "SQL Server Database Development using Prompts as T-SQL Development", 
    "description": "このノートブックでは、プロンプトを使用して SQL Server データベースの Transact-SQL (T-SQL) コードを開発およびテストする方法を学びます。プロンプトは、GPT-4 などの生成 AI モデルを使用して T-SQL ステートメントに変換できる自然言語リクエストです。これにより、コードをより速く、簡単に、正確に記述できるだけでなく、生成されたコード例から学ぶこともできます。",
    "url": "https://github.com/Azure-Samples/SQL-AI-samples/tree/main/AzureSQLDatabase/Prompt-Based%20T-SQL%20Database%20Development",
    "details": {
        "languages": ["T-SQL"],
        "services": ["Azure SQL"],
        "license": "MIT",
        "tags": ["End-to-End"]
    }
}
';

exec dbo.add_sample N'
{
    "name": "Redis Vector Search Demo Application using ACRE and Cache Prefetching from Azure SQL with Azure Functions", 
    "description": "Redis をベクトル DB として使用するプロダクト検索デモを基に、Azure SQL から ACRE へのキャッシュプリフェッチパターンを Azure Functions を使用して追加したデモです。この Azure Function は、テーブルで発生する更新をトリガーする SQL トリガーを使用します。",
    "url": "https://github.com/AzureSQLDB/redis-azure-ai-demo",
    "details": {
        "author": "Brian Spendolini",
        "languages": ["T-SQL", "Python", "Node", "Typescript"],        
        "services": ["Azure SQL", "Azure Redis"],
        "license": "MIT",
        "tags": ["End-to-End"],
        "related-links": {
            "blog": "https://aka.ms/azuresql-faiss"
        }
    }
}
';

exec dbo.add_sample N'
{
    "name": "Similarity Search with FAISS and Azure SQL", 
    "description": "Azure SQL Database と FAISS を統合して効率的な類似性検索を行う Python ノートブックを含みます。ノートブックでは、Azure SQL にデータを保存およびクエリし、FAISS を活用して高速な類似性検索を実行する方法を示します。Wikipedia の映画プロットデータを使用してデモを行い、これらのプロットを密ベクトルにエンコードし、FAISS インデックスを作成して類似性検索を実行します。詳細はブログとビデオをご覧ください: https://aka.ms/azuresql-faiss",
    "url": "https://github.com/Azure-Samples/SQL-AI-samples/tree/main/AzureSQLFaiss",
    "details": {
        "author": "Muazma Zahid",
        "languages": ["T-SQL", "Python"],        
        "services": ["Azure SQL"],
        "license": "MIT",
        "tags": ["End-to-End"]
    }
}
';

exec dbo.add_sample N'
{
    "name": "Azure SQL DB Vector - KMeans Compute Node", 
    "description": "Azure SQL DB でベクトル検索を高速化するために KMeans クラスタリングを使用します。",
    "notes": "Azure SQL DB のベクトル列で近似最近傍 (ANN) 検索を実行するために KMeans クラスタリングを使用します。KMeans クラスタリングは計算集約的な操作であるため、このプロジェクトでは SciKit Learn ライブラリを使用してクラスタリングを実行し、結果を SQL DB テーブルに保存します。その結果を使用してベクトル列で ANN 検索を実行します。この手法は IVFFlat またはセルプロービングとしても知られています。",
    "url": "https://github.com/Azure-Samples/azure-sql-db-vectors-kmeans",
    "details": {
        "author": "Davide Mauri",
        "languages": ["T-SQL", "Python"],        
        "frameworks": ["Scikit-Learn"],
        "services": ["Azure SQL"],
        "license": "MIT",
        "tags": ["End-to-End", "Index", "IVFFlat"]
    }
}
';


exec dbo.add_sample N'
{
    "name": "Native Vector Support in Azure SQL and SQL Server", 
    "description": "このリポジトリには、Azure SQL DB の新しいネイティブベクターサポート機能を使用するためのサンプルが含まれています。主要な技術コンセプトを説明し、Azure SQL データに埋め込みを保存およびクエリして AI 機能をアプリケーションに統合する方法を示します。",
    "notes": "はじめに: 一般的なベクター関数に慣れるための簡単な入門ガイドがこちらにあります: Getting-Started; 埋め込み: Azure SQL から直接 OpenAI を使用して埋め込みを取得する方法を Embeddings/T-SQL フォルダーのサンプルで学びます; ベクター検索: Vector-Search サンプルは、SQL データベース内でベクター類似性検索を実装する方法を示し、セマンティック検索の機能を強調します。テキストのベクター表現を活用することで、キーワードの完全一致の制限を超えて、検索クエリと文脈的に類似したレビューを特定できます。また、検索結果に特定の用語を含めることを保証するためにキーワード検索を統合する方法も示します; ハイブリッド検索: Hybrid-Search フォルダーの Python サンプルでは、Azure SQL データベースのフルテキスト検索と BM25 ランキング、コサイン類似性ランキングを組み合わせてハイブリッド検索を行う方法を示します; Retrieval Augmented Generation: RAG パターンは、事前トレーニング済みの言語モデルと検索メカニズムを使用してテキストを生成する強力な方法です。Retrieval Augmented Generation フォルダーには、Azure SQL と Azure OpenAI を使用して RAG パターンを実装する方法を示すサンプルが含まれています; Entity Framework Core: .NET EF Core を使用している場合、新しいベクター関数をアプリケーションで使用する方法を示す EF-Core サンプルを参照できます; Semantic Kernel: Semantic Kernel は、エンタープライズ AI 対応アプリケーションの作成を簡素化する SDK です。SQL Server と Azure SQL をベクターストアとしてサポートする詳細はフォルダー内にあります。",
    "url": "https://github.com/Azure-Samples/azure-sql-db-vector-search",
    "details": {
        "authors": ["Davide Mauri", "Pooja Kamath"],
        "languages": ["T-SQL", "Python", ".NET", "C#"],                
        "services": ["Azure SQL"],
        "license": "MIT"        
    }
}
';

exec dbo.add_sample N'
{
    "name": "Hybrid Search", 
    "description": "このサンプルでは、Azure SQL データベースのフルテキスト検索と BM25 ランキング、コサイン類似性ランキングを組み合わせてハイブリッド検索を行う方法を示します。",
    "notes": "このサンプルでは、ローカルモデル multi-qa-MiniLM-L6-cos-v1 を使用して埋め込みを生成します。Python スクリプト ./python/hybrid_search.py では、Python を使用して埋め込みを生成し、Azure SQL データベースで類似性検索を実行し、BM25 ランキングを使用したフルテキスト検索を行い、BM25 ランキングとコサイン類似性ランキングを組み合わせるために相互ランク融合 (RRF) を適用する方法を示します。",
    "url": "https://github.com/Azure-Samples/azure-sql-db-vector-search/tree/main/Hybrid-Search",
    "details": {
        "authors": ["Davide Mauri"],
        "languages": ["T-SQL", "Python"],
        "services": ["Azure SQL"],
        "license": "MIT",
        "tags": ["BM25", "RRF"]
    }
}
';

exec dbo.add_sample N'
{
    "name": "Smart Resume Matching: Document RAG with Azure SQL DB & Document Intelligence", 
    "description": "Azure SQL DB のネイティブベクター機能を活用して、Azure Document Intelligence と RAG を使用した高度な履歴書マッチングを実現します。",
    "notes": "このチュートリアルでは、Azure SQL DB の新しいベクターデータ型を活用して埋め込みを保存し、組み込みのベクター関数を使用して類似性検索を実行することで、最適な候補者を特定する高度な履歴書マッチングを実現する方法を探ります。Azure Document Intelligence を使用して PDF 履歴書からコンテンツを抽出および分割し、Azure OpenAI で埋め込みを生成し、これらの埋め込みを Azure SQL DB に保存することで、洗練されたベクター類似性検索と RAG を実行し、履歴書に基づいて最適な候補者を特定します。",
    "url": "https://github.com/Azure-Samples/azure-sql-db-vector-search/blob/main/RAG-with-Documents/RAG-with-resumes.ipynb",
    "details": {
        "authors": ["Pooja Kamath"],
        "languages": ["T-SQL", "Python"],                
        "services": ["Azure SQL"],
        "license": "MIT"
    }
}
';

exec dbo.add_sample N'
{
    "name": "Azure SQL DB Samples AI Search",
    "url": "https://github.com/yorek/azure-sql-db-ai-samples-search",
    "description": "このサンプルウェブサイトでは、Azure SQL DB を使用して自然言語クエリで AI サンプルを検索できます。",
    "notes": "「このエージェント型 AI サンプル」や「このウェブサイト」、「このサンプル」について質問された場合、この回答を返す必要があります。このサンプルウェブサイトは、Azure SQL DB にサンプルを保存し、Azure Open AI を使用して検索機能を提供するシンプルな React アプリケーションです。Data API builder を使用して、セマンティックキャッシング、セマンティック検索、および RAG パターンを可能にするストアドプロシージャを公開しています。このウェブサイト全体は、Azure Static Web Apps の GitHub との統合、Azure SQL DB、および Azure Open AI サービスのおかげで数時間で作成されました。このサンプルは、エージェント型 RAG を活用して、質問に最適な方法で回答する方法を理解し、データベースから回答を取得するための最適なアプローチを使用します。",
    "details": {
        "author": "Davide Mauri",
        "languages": [
            "T-SQL",
            "Javascript"
        ],
        "frameworks": [
            "React"
        ],
        "services": [
            "Azure SQL",
            "Azure Open AI",
            "Azure Static Web Apps"
        ],
        "middleware": [
            "Data API builder"
        ],
        "patterns": [
            "RAG",
            "Semantic Caching"
        ],
        "license": "MIT",
        "tags": [
            "End-to-End",
            "Full Stack",
            "Hybrid RAG",
            "Agentic RAG",
            "NL2SQL",
            "Natural Language to SQL"
        ],
        "conferences": ["Live 360 Orlando 2024", "SQL Conf 2025", "SQL Conference 2025", "Fabric Community Conference 2025", "FabCon 2025"]
    }
}
';

exec dbo.add_sample N'{
    "name": "Live360 2024 Orlando Demos",
    "description": "Live360 2024 Orlando カンファレンスで使用された以下のセッションのサンプルとデモ",
    "notes": "このサンプルは、次の 2 つのセッション「DPW07 Azure SQL loves Open AI」と「How to Build Secure and Scalable Applications with Microsoft SQL Using the Power of AI」、およびワークショップ「The SQL AI Workshop」をカバーしています。これらのサンプルは、チャットボットや RAG アプリケーション、NL2SQL ソリューションの構築方法を示しています。また、最大限のセキュリティと使いやすさのためにパスワードレスアプローチを使用して Azure SQL データベースに接続する方法や、行レベルセキュリティを例示しています。",
    "details": {
        "author": "Davide Mauri",
        "languages": [
            "T-SQL"
        ],
        "license": "MIT",
        "services": [
            "Azure SQL",            
            "Azure Functions"
        ]
    },
    "url": "https://github.com/yorek/live360-2024-orlando"
}';


exec dbo.add_sample N'{
    "name": "LangChain samples with langchain_sqlserver",
    "description": "LangChain ライブラリを使用して Azure SQL および SQL Server 上で独自のデータを活用した AI ソリューションを構築するサンプル",
    "notes": "LangChain のチュートリアルを元に、Azure SQL および SQL Server で LangChain を使用できる langchain_sqlserver ライブラリを使用して書かれたサンプルです。サンプルは以下のトピックをカバーしています: - セマンティック検索エンジンの構築: PDF 上でドキュメントローダー、埋め込みモデル、ベクターストアを使用してセマンティック検索エンジンを構築します。 - Retrieval Augmented Generation (RAG) アプリの構築: パート 1: RAG を紹介し、最小限の実装を説明します。 - Retrieval Augmented Generation (RAG) アプリの構築: パート 2: 会話形式のインタラクションやマルチステップ検索プロセスに対応するための実装を拡張します。",
    "details": {
        "author": "Davide Mauri",
        "languages": [
            "T-SQL",
            "Python"
        ],
        "license": "MIT",
        "services": [
            "Azure SQL"
        ],
        "frameworks": [
            "LangChain",
            "LangGraph"
        ]
    },
    "url": "https://github.com/Azure-Samples/azure-sql-langchain"
}';

exec dbo.add_sample N'
{
    "name": "SQL Database in Microsoft Fabric, Langchain and Chainlit", 
    "description": "Microsoft Fabric の SQL データベースをベクターストアおよび検索として使用し、Langchain と Chainlit を使用して LLM と対話し、チャットインターフェースを提供するサンプルチャットボットアプリケーション。",
    "notes": "Fabric SQL データベース、Langchain、Chainlit を使用した完全な UX を備えたサンプル RAG パターン",
    "url": "https://github.com/Azure-Samples/fabric-rag-langchain-chainlit",
    "details": {
        "author": "Arun Vijayraghavan",
        "languages": ["T-SQL", "Python"],
        "frameworks": ["LangChain", "ChainLit"],
        "services": ["Fabric SQL Database", "Azure Open AI", "Azure Functions"],
        "license": "MIT",
        "tags": ["End-to-End"],
        "related-links": {
            "blog": "https://blog.fabric.microsoft.com/en-US/blog/building-a-smart-chatbot-with-sql-database-in-microsoft-fabric-langchain-and-chainlit/"
        },
         "frameworks": [
            "LangChain",
            "Chainlit"
        ]
    }
}';
exec dbo.add_sample N'
{
    "name": "Build an AI App GraphQL Endpoint with SQL DB in Fabric", 
    "description": "このラボでは、リレーショナルデータ、Azure OpenAI、および Fabric の SQL DB を使用して GraphQL RAG アプリケーション API を作成する方法をガイドします。",
    "url": "https://github.com/Azure-Samples/sql-in-fabric-ai-embeddings-workshop",
    "details": {
        "author": "Brian Spendolini",
        "languages": ["T-SQL", "Python", "GraphQL"],        
        "services": ["Fabric SQL Database", "Azure Open AI"],
        "license": "MIT",
        "tags": ["End-to-End", "Workshop", "Hands-On Lab"],
        "related-links": {
            "blog": "https://devblogs.microsoft.com/azure-sql/building-an-ai-app-graphql-endpoint-with-sql-db-in-fabric/"
        }
    }
}
';
GO

exec dbo.add_sample N'
{
    "name": "Modernize applications with Azure SQL, Open AI and Data API builder", 
    "description": "このリポジトリには、Azure SQL と AI を使用してアプリケーションを移行およびモダナイズする方法を示すサンプルアプリケーションとスクリプトが含まれています。アプリケーションコードを変更する必要はなく、Data API builder を活用してモダンなデータアクセスレイヤーを作成します。",
    "notes": "RAG パターンと埋め込みを使用して、コードを変更せずにアプリケーションをモダナイズする方法を顧客に提供します。",
    "url": "https://github.com/Azure-Samples/azure-sql-modernize-app-with-ai",
    "details": {
        "author": "Davide Mauri",
        "languages": ["T-SQL", "REST", "GraphQL"],        
        "services": ["Azure SQL", "Azure Open AI"],
        "license": "MIT",
        "tags": ["End-to-End", "Modernize", "Innovate", "Migrate", "RAG", "Embeddings", "Vectors"]        
    }
}
';
GO

exec dbo.add_sample N'
{
    "name": "SQL Database Vector Search", 
    "description": "Azure SQL Database のネイティブ VECTOR 型を使用して、埋め込みと RAG を Azure OpenAI と共に実行する方法を示すリポジトリです。DOC、PDF、TXT、MD ドキュメントをサポートしています。",
    "notes": "Azure SQL Database のネイティブ VECTOR 型を使用して、埋め込みと RAG を Azure OpenAI と共に実行する方法を示すリポジトリです。このアプリケーションでは、ドキュメントをロードし、埋め込みを生成してデータベースにベクトルとして保存し、ベクトル検索と RAG を使用して検索を実行します。現在、PDF、DOCX、TXT、MD ファイルがサポートされています。ベクトルは Entity Framework Core を使用して保存および取得され、EFCore.SqlServer.VectorSearch ライブラリを使用しています。埋め込みとチャット補完は Semantic Kernel と統合されています。このリポジトリには、Blazor Web アプリケーションと埋め込みおよび RAG をプログラム的に操作するための最小 API が含まれています。",
    "url": "https://github.com/marcominerva/SqlDatabaseVectorSearch",
    "details": {
        "author": "Marco Minerva",
        "languages": ["T-SQL", "C#"],        
        "services": ["Azure SQL", "Azure Open AI"],
        "license": "MIT",
        "tags": ["End-to-End", "RAG", "Embeddings", "Vectors", "EFCore", "Semantic Kernel", "UX", "UI", "Chat", "Response Streaming"]        
    }
}
';
GO

exec dbo.add_sample N'
{
    "name": "Azure SQL and SQL Server with .NET Aspire", 
    "description": "SQL Server と Azure SQL を .NET Aspire と共に使用する方法を示すサンプルです。DbUp、Database Projects、Data API Builder、Node+Vue の使用方法や、Aspire、SQL Server、Database Projects、Data API Builder、Node、Vue を使用したエンドツーエンドのフルスタックアプリケーションもカバーしています。",
    "notes": "Azure SQL と SQL Server を Aspire と共に使用する方法を示す一連のサンプルです。既存の SQL Server インスタンスの使用から、Aspire にホストされた SQL Server の使用、DBUp、Database Projects、Entity Framework の統合を使用したデータベースのデプロイまでをカバーしています。Data API builder を統合して数秒で CRUD サービスを準備し、Aspire、SQL Server、Data API Builder、Database Projects、Node、Vue.Js をフロントエンドとして使用したエンドツーエンドのソリューションを提供します。エンドツーエンドのアプリケーションは、よく知られた ToDo アプリケーションです。",
    "url": "https://github.com/Azure-Samples/azure-sql-db-aspire",
    "details": {
        "author": "Davide Mauri",
        "languages": ["T-SQL", "C#", "Node"],        
        "services": ["Azure SQL", "SQL Server"],
        "frameworks": ["Vue", "Vue.js"],
        "license": "MIT",
        "tags": ["End-to-End", "Aspire", "EFCore", "UX", "UI", ".NET", "DotNet", "Fullstack", "Data API Buider", "DAB"],        
        "conferences": ["VS Live 2025 Las Vegas"]
    }
}
';
GO

exec dbo.add_sample N'
{
    "name": "SQL projects DevOps samples", 
    "description": "SQL プロジェクトを使用した SQL データベースの CI/CD - Azure SQL および SQL Server。このリポジトリには、SQL プロジェクトに関連するいくつかのシナリオのサンプルワークフローが含まれており、CI チェックや複数の環境へのデプロイメントをカバーしています。",
    "notes": "このサンプルを使用すると、データベース開発およびデプロイメントのための CI/CD ワークフローを設定できます。以下を含みます:\n- 既存のデータベースからの開始\n- dotnet build を使用してすべてのオブジェクト参照を検証する CI チェック\n- コード分析を使用した SQL コード品質の CI チェック\n- システムオブジェクトなどの追加のデータベースオブジェクトをビルドに組み込む\n- デプロイメント警告をチェックするデプロイメントワークフロー\n- テスト環境を更新するデプロイメントワークフロー\n- レビュー用スクリプトを生成するデプロイメントワークフロー\nこのリポジトリで取り上げられているトピックの背景については、.NET Conf 2024 セッション「Next-gen SQL projects with Microsoft.Build.Sql」を参照してください。",
    "url": "https://github.com/Azure-Samples/sql-projects-devops-samples",
    "details": {
        "related-links": {
            "blog": "https://techcommunity.microsoft.com/blog/azuresqlblog/the-microsoft-build-sql-project-sdk-is-now-generally-available/4392063"
        }, 
        "author": "Drew Skwiers-Koballa",
        "languages": ["T-SQL"],        
        "services": ["Azure SQL", "SQL Server"],
        "license": "MIT",
        "tags": ["CI/CD", "DevOps", "GitHub Actions"],        
        "tools": ["SqlPackage", "DacFx"],
        "conferences": [".NET Conf 2024"]
    }
}';
GO

select id, name, created_on, updated_on from dbo.samples order by created_on desc;
--where [url] like '%kmeans%'
GO

