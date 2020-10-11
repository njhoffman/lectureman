module.exports = {
  cache: {
    titles: '.cache/titles.json',
    courses: '.cache/courses',
    clean: true
  },
  urls: {
    search: 'http://thegreatcourses.com/search/sort-by/relevance/sort-direction/desc/mode/list',
    titles:
      'http://www.thegreatcourses.com/courses/types/individual-courses/page/#/sort-by/name/sort-direction/asc/mode/list',
    genres: {
      'Better Living':
        'https://www.thegreatcourses.com/courses/types/individual-courses/category/better-living/sort-by/name/sort-direction/asc/mode/list',
      'Economics & Finance':
        'https://www.thegreatcourses.com/courses/types/individual-courses/category/economics-finance/sort-by/name/sort-direction/asc/mode/list',
      'Fine Arts':
        'https://www.thegreatcourses.com/courses/types/individual-courses/category/fine-arts/sort-by/name/sort-direction/asc/mode/list',
      'High School':
        'https://www.thegreatcourses.com/courses/types/individual-courses/category/high-school/sort-by/name/sort-direction/asc/mode/list',
      History:
        'https://www.thegreatcourses.com/courses/types/individual-courses/category/history/sort-by/name/sort-direction/asc/mode/list',
      'Literature & Language':
        'https://www.thegreatcourses.com/courses/types/individual-courses/category/literature-language/sort-by/name/sort-direction/asc/mode/list',
      Mathematics:
        'https://www.thegreatcourses.com/courses/types/individual-courses/category/mathematics/sort-by/name/sort-direction/asc/mode/list',
      Music:
        'https://www.thegreatcourses.com/courses/types/individual-courses/category/music/sort-by/name/sort-direction/asc/mode/list',
      'Philosophy & Intellectual History':
        'https://www.thegreatcourses.com/courses/types/individual-courses/category/philosophy-intellectual-history/sort-by/name/sort-direction/asc/mode/list',
      Professional:
        'https://www.thegreatcourses.com/courses/types/individual-courses/category/professional/sort-by/name/sort-direction/asc/mode/list',
      Religion:
        'https://www.thegreatcourses.com/courses/types/individual-courses/category/religion/sort-by/name/sort-direction/asc/mode/list',
      Science:
        'https://www.thegreatcourses.com/courses/types/individual-courses/category/science/sort-by/name/sort-direction/asc/mode/list'
    }
  }
};
