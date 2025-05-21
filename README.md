# GrowthBuddy AI

従業員の自己成長とウェルビーイングを支援するAIパーソナルエージェント。Google Cloud Vertex AIとFlutterを活用したハッカソンプロジェクト。

## 📱 機能

- AIガイド付き日次・週次の振り返り
- パーソナライズされた成長洞察
- 目標設定と進捗トラッキング

## 🛠️ 技術スタック

### フロントエンド
- Flutter (クロスプラットフォームUI)
- Firebase Authentication (認証)
- Cloud Firestore (データストア)

### バックエンド
- Google Cloud Run (コンテナホスティング)
- Vertex AI (Geminiモデル活用)
- BigQuery (データ分析)

## 🚀 セットアップ手順

### 前提条件
- Flutter 3.10.0以上
- Firebase CLI
- Google Cloud CLI

### ローカル開発環境構築
```
# リポジトリのクローン
git clone https://github.com/yourusername/growth-buddy-ai.git
cd growth-buddy-ai

# 依存関係のインストール
flutter pub get

# ローカル実行
flutter run
```

### Google Cloud設定
1. Google Cloudプロジェクトを作成
2. Vertex AI APIを有効化
3. Cloud Run APIを有効化
4. 詳細は`docs/cloud-setup.md`を参照

## 🤝 貢献ガイドライン

1. このリポジトリをフォーク
2. 機能ブランチを作成 (`git checkout -b feature/amazing-feature`)
3. 変更をコミット (`git commit -m 'Add some amazing feature'`)
4. ブランチをプッシュ (`git push origin feature/amazing-feature`)
5. Pull Requestを作成

## 📜 ライセンス

MIT License - 詳細は[LICENSE](LICENSE)ファイルを参照してください。
