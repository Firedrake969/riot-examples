<app>
    <div class="wrapper">
        <header name="header" class="header"></header>
        <div name="content" class="content">
            <div class="post-search">
                <input name="searchbar" type="text" onchange={ search } />
                <label><input name="by-title" type="checkbox" checked="checked" onchange={ search } />By Title</label>
                <label><input name="by-content" type="checkbox" onchange={ search } />By Content</label>
                <label><input name="by-author" type="checkbox" onchange={ search } />By Author</label>
            </div>
            <yield />
            <post
                class="post"
                each={ filteredPosts }
                title={ title }
                author={ author }
                date={ date }
                content={ content }
            />

            <!-- try it out with two yields! -->
            <!-- <yield /> -->
        </div>
        <div class="push"></div>
    </div>
    <footer name="footer" class="footer"></footer>

    <script>
        var allPosts = opts.data;
        this.filteredPosts = allPosts;

        // function arrsShareElement(arr, check) {
        //     for (var i = 0; i < check.length; i++) {
        //         if (arr.indexOf(check[i]) > -1) {
        //             return true;
        //         }
        //     }
        //     return false;
        // }

        this.search = function() {
            var query = this.searchbar.value ? this.searchbar.value.split(' ') : [];
            console.log(this.searchbar.value);
            var byTitle = this['by-title'].checked;
            var byContent = this['by-content'].checked;
            var byAuthor = this['by-author'].checked;

            var titlePosts = [];
            var contentPosts = [];
            var authorPosts = [];

            if (byTitle) {
                titlePosts = allPosts.filter(function(item) {
                    return item.title.indexOf(query) > -1;
                });
            }
            if (byContent) {
                contentPosts = allPosts.filter(function(item) {
                    return item.content.indexOf(query) > -1;
                });
            }
            if (byAuthor) {
                authorPosts = allPosts.filter(function(item) {
                    return item.author.indexOf(query) > -1;
                });
            }

            var filteredPosts = titlePosts.concat(contentPosts).concat(authorPosts);

            this.filteredPosts = filteredPosts;
        };
    </script>
</app>