 </td>
	              </tr>
	              </table>
                
				
	</div>
  
</div>
<div class="c10"></div>



<script>
$(document).ready(function() {

    setInterval(function() {
        $.ajax({
            url: 'index4.php?page=session_alive',
            method: 'GET',
            dataType: 'json',
            success: function(response) {
                console.log('Session refreshed:', new Date(response.time * 1000));
            },
            error: function() {
                console.warn('Không thể kết nối tới session_alive');
            }
        });
    }, 3 * 60 * 1000); // 3 phút
});
</script>


</body>
</html>
