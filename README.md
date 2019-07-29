# README

This README would normally document whatever steps are necessary to get the

#リポジトリ名<br>
「Festa」

#サイト種類<br>
お祭り検索サイト

#開発環境<br>
Ruby on Rails

#使用言語<br>
ruby<br>
javascript<br>

#主な機能<br>
１）お祭りを名前と地域と開催月で検索できる<br>
２）スタッフとしての会員登録機能<br>
３）主催者団体としての会員登録機能<br>
４）団体がお祭りを登録できる<br>
５）スタッフと団体は登録情報を編集できる<br>
６）スタッフがマイページでスタッフ登録したお祭りをカレンダーで確認できる<br>
７）団体がマイページで登録したお祭りをカレンダーで確認できる<br>
８）団体が登録したお祭りを編集、削除できる<br>
９）管理者が、スタッフと団体とお祭りの情報を確認、削除できる<br>
１０）管理者がプレゼントを登録できる<br>
１１）スタッフが貯めたポイントでプレゼントと交換できる<br>
１２）スタッフ、団体共に退会機能がある<br>
１３）管理者側で、スタッフと団体とお祭りの名前検索ができる<br>
１４）管理者側でプレゼントの配送状況を変更できる<br>


#主なテーブル<br>
１）Admin　テーブル<br>
管理者の情報があるテーブル

２）Staff テーブル<br>
スタッフの情報があるテーブル

３）organization テーブル<br>
主催者団体の情報があるテーブル

4)festival　テーブル<br>
お祭りの情報があるテーブル

5)information テーブル<br>
お祭りのスタッフに対するお知らせがあるテーブル

6)staff_inquirie テーブル<br>
スタッフのお問い合わせのテーブル

7)organization_inquirie　テーブル<br>
団体のお問い合わせのテーブル

8)staff_replie　テーブル<br>
スタッフへのお問い合わせ返信テーブル

9)organization_replie　テーブル<br>
団体へのお問い合わせ返信テーブル

10)present　テーブル<br>
管理者が登録するプレゼントの情報があるテーブル

11)order　テーブル<br>
ポイントとプレゼントを交換した情報があるテーブル

12)matche テーブル<br>
スタッフ登録したスタッフとお祭りの情報があるテーブル

13)point テーブル<br>
お祭りの主催者団体がスタッフに付与した情報があるテーブル


#使用したgem
'devise'<br>
ログイン機能をつけるgem

'bootstrap-sass'<br>
レイアウトをやりやすくするためのgem

'jquery-rails'<br>
jqueryを使うためのgem

'refile','refile-mini_magick'<br>
画像を扱うためのgem

'kaminari'<br>
ページネーションのためのgem

'paranoia','acts_as_paranoid'<br>
論理削除のためのgem

'font-awesome-rails'<br>
アイコンのためのgem

'geocoder'<br>
ジオコーディングするためのgem

