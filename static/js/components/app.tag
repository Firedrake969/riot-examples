<app>
    <div class="wrapper">
        <header name="header" class="header"></header>
        <content name="content" class="content">
            <yield />
            semantic markup!  yay!
            <!-- <article
                each={ opts.data }
 -->
            <!-- try it out with two yields! -->
            <!-- <yield /> -->
        </content>
    </div>
    <footer name="footer" class="footer"></footer>

    <script>
        console.log(opts.data);
        this.on('mount', function() {
            console.log(this);
        });
    </script>
</app>