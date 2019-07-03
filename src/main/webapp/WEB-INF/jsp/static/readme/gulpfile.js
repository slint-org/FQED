var gulp = require('gulp');
var browserSync = require('browser-sync').create();
var sass = require('gulp-sass');
var concat = require('gulp-concat');

// Compile sass into CSS & auto-inject into browsers
gulp.task('sass', function () {
    return gulp.src(['node_modules/bootstrap/scss/bootstrap.scss', 'src/scss/*.scss'])
        .pipe(sass())
        .pipe(concat('styles.css'))
        .pipe(gulp.dest("src/css"))
        .pipe(browserSync.stream());
});

// Move the javascript files into our /src/js folder
gulp.task('js', function () {
    return gulp.src(['node_modules/bootstrap/dist/js/bootstrap.min.js', 'node_modules/jquery/dist/jquery.min.js', 'node_modules/popper.js/dist/umd/popper.min.js'])
        .pipe(gulp.dest("src/js"))
        .pipe(browserSync.stream());
});

// Static Server + watching scss/html files
gulp.task('serve', ['sass'], function () {

    browserSync.init({
        server: "./src",
        startPath: "./public/index.html"
    });

    gulp.watch(['node_modules/bootstrap/scss/bootstrap.scss', 'src/scss/*.scss'], ['sass']);
    gulp.watch("src/public/*.html").on('change', browserSync.reload);
    gulp.watch("src/public/contact/*.html").on('change', browserSync.reload);
    gulp.watch("src/secure/*.html").on('change', browserSync.reload);
    gulp.watch("src/nav/*.html").on('change', browserSync.reload);
    gulp.watch("src/img/*").on('change', browserSync.reload);
    gulp.watch("src/img/downloadable/*").on('change', browserSync.reload);
    gulp.watch("src/RSS/*").on('change', browserSync.reload);
});

gulp.task('default', ['js', 'serve']);