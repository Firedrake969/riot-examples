<post>
    <div>
        <div>
            { opts.title }
        </div>
        <div>
            <span>{ opts.author }</span>
            <span>{ opts.date }</span>
        </div>
        <div>
            <yield />
            { opts.content }
        </div>
    </div>

    <script>
        //
    </script>
</post>