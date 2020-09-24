class Genre < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '風景' },
    { id: 3, name: '動物' },
    { id: 4, name: '地域' },
    { id: 5, name: '国' },
    { id: 6, name: '日常' },
    { id: 7, name: 'ユーモア' },
    { id: 8, name: 'スポーツ' },
    { id: 9, name: 'グルメ' },
    { id: 10, name: 'その他' }
  ]
  end