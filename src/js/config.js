//设置配置信息
require.config({
    paths: {//设置短路径，取别名
        'jquery': '../lib/jquery-1.10.1.min',
        'codeverify': '../lib/jquery.code',
        'common': '../lib/common',
        'login': 'login',
        'register': 'register',
        'detailpages': 'detailpages'
    },
    shim: {//用shim这个属性，设置子模块的顺序，让异步的代码中有同步的特性
        'codeverify': ['jquery'],
        'login': ['jquery', 'codeverify', 'common'],
        'register': ['jquery', 'codeverify', 'common'],
        'detailpages': ['jquery', 'common']
    }
});