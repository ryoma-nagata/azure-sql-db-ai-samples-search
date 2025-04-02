import React, { useState, useEffect } from 'react';
import { Link } from '@fluentui/react-components';
import styles from './PageTitle.module.css';

export default function PageTitle() {
  const [sampleCount, setSampleCount] = useState(0);
  const [isSampleCountLoading, setIsSampleCountLoading] = useState(true);

  useEffect(() => {
    const fetchSampleCount = async () => {
      setIsSampleCountLoading(true);
      try {
        const response = await fetch('./data-api/rest/countSamples');
        if (response.ok) {
          const data = await response.json();
          const count = data.value[0].total_sample_count;
          setSampleCount(count);
        }
      } catch (error) {
        console.log(error);
      } finally {
        setIsSampleCountLoading(false);
      }
    };

    fetchSampleCount();
  }, [location]);

  return (
    <div className={styles.header}>
      <div className={styles.title}>
        Azure SQL DB Samples AI Agentic RAG Search 💡🔍
      </div>
      <div className={styles.subtitle}>
        AI エージェントの検索機能を活用してサンプルを見つける 🚀
      </div>
      <div className={styles.sampleCount}>
        {isSampleCountLoading ? '利用可能なサンプルの数を確認しています…' : (<span> <Link href="/samples">{sampleCount} 件のサンプル</Link> がデータベースにあります.</span>)}
      </div>
    </div>
  );
};

