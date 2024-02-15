# Simat Base Project
This project is a starting point for a Flutter application.

# Localizations
- to generate localizations run this command "dart run intl_utils:generate"

# To Build Release Version
- dart run lib/env/env_specific_handlers/dev_handler.dart
- flutter build apk --release --no-tree-shake-icons --dart-define-from-file=.run/json/dev.json  --flavor dev

# git hub token
- git hub token : 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