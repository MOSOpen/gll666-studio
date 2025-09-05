#!/bin/bash

# SGLL666 - Ritual Audio Cleaner
# Collettivo Undersound

for file in *.wav; do
  echo "🔍 Processing $file..."

  # Remove metadata using ffmpeg
  ffmpeg -i "$file" -map_metadata -1 -c:a pcm_s16le "cleaned_$file"

  # Append SGLL666 signature to log
  echo "✅ $file cleaned and sealed with SGLL666" >> sgll666_log.txt
done

echo "🎛️ All files processed. Log saved in sgll666_log.txt"
