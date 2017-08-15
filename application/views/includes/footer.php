<!--	<div id="footer">-->
<!--		<hr>-->
<!--		<div class="inner">-->
<!--			<div class="container">-->
<!--				<p class="right"><a href="#">Back to top</a></p>-->
<!--				<p>-->
<!--				</p>-->
<!--			</div>-->
<!--		</div>-->
<!--	</div>-->

<script>
    $('#confirm-delete').on('show.bs.modal', function(e) {
        $(this).find('.btn-ok').attr('href', $(e.relatedTarget).data('href'));

        $('.debug-url').html('Delete URL: <strong>' + $(this).find('.btn-ok').attr('href') + '</strong>');
    });
</script>
</body>
</html>