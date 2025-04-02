exec dbo.add_sample '
{
    "name": "Azure SQL DB Vectorizer", 
    "description": "Azure SQLからデータの埋め込みを迅速に生成するツール", 
    "url": "https://github.com/Azure-Samples/azure-sql-db-vectorizer",
    "notes": "Azure SQLからデータを埋め込みに変換するツールです。テキストを含むテーブルを指定し、.envファイルを設定してツールを実行することで、テキストを埋め込みに迅速に変換できます。埋め込みはOpenAI APIを使用して生成されます。ツールはAzure SQLデータベースに接続し、指定されたテーブルからテキストを読み取り、OpenAI APIに送信し、埋め込みを同じテーブルに保存します。テキストが大きすぎて1回のAPI呼び出しに収まらない場合、ツールはテキストをチャンクに分割し、各チャンクをAPIに送信します。チャンク化はMicrosoft.SemanticKernel.TextパッケージのTextChunker.SplitPlainTextParagraphsメソッドを使用して行われます。段落ごとの最大トークン数は2048に設定されています。埋め込みは専用のテーブルに保存されます。テーブルが存在しない場合、ツールは埋め込みを保存するための新しいテーブルを作成できます。元のテーブルと埋め込みを保存するテーブルの関係はid/parent_id列を使用して1:Nの関係として確立されます。元のテーブルの各行には、チャンク化プロセスのために埋め込みテーブルに1つ以上の行が関連付けられます。データベースの行は5000行のバッチで処理されます。これらの行はキューに読み込まれ、デフォルトでは各OpenAI URLごとに2つのスレッドがキューからデータを引き出し、必要に応じてチャンク化し、埋め込みリクエストをOpenAI APIに送信します。各API呼び出しでは最大50個のテキストチャンクをバッチ処理します。キューが空になると、プロセスは再開され、ソーステーブル内のすべての行が処理されるまで続きます。",
    "details": {
        "author": "Davide Mauri",
        "languages": [".NET"],
        "license": "MIT",
        "services": ["Azure SQL"],
        "tags": ["Azure", "SQL", "Embeddings", "Vectorizer"]
    }
}
';

exec dbo.add_sample '
{
    "name": "PASS 2024 Demos", 
    "description": "PASS Summit 2024で使用されたデモ", 
    "url": "https://github.com/yorek/pass-2024",
    "notes": "SQL AIワークショップ(.NET + Semantic KernelおよびPython + LangChain + ChainLit)およびセッション「Azure SQL Databaseの力を解き放つ: AI、エラスティックプール、その他」のデモを含むリポジトリ",
    "details": {
        "author": "Davide Mauri",
        "languages": ["T-SQL", ".NET", "Python"],
        "services": ["Azure SQL"],
        "license": "MIT",
        "conferences": ["PASS Summit 2024"]        
    }
}
';

-- 以下のコードも同様に翻訳を適用してください。
