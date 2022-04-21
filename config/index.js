module.exports = {
  cache: {
    titles: '.cache/titles.json',
    courses: '.cache/courses',
    clean: true
  },
  genres: {
    'Better Living': 'better-living',
    'Economics & Finance': 'economics-finance',
    'Fine Arts': 'fine-arts',
    'High School': 'high-school',
    History: 'history',
    'Literature & Language': 'literature-language',
    Mathematics: 'mathematics',
    Music: 'music',
    'Philosophy & Intellectual History': 'philosophy-intellectual-history',
    Professional: 'professional',
    Religion: 'religion',
    Science: 'science'
  },
  urls: {
    base: 'http://www.thegreatcourses.com',
    search: 'http://www.thegreatcourses.com/search/sort-by/relevance/sort-direction/desc/mode/list',
    titles: 'http://www.thegreatcourses.com/courses/types/individual-courses/page/#/sort-by/name/sort-direction/asc/mode/list',
    genres:
      'http://www.thegreatcourses.com/courses/types/individual-courses/category/#genre/page/#/sort-by/name/sort-direction/asc/mode/list'
  }
};
