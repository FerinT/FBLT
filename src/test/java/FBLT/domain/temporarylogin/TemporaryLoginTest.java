package FBLT.domain.temporarylogin;

import FBLT.domain.user.User;
import org.junit.Assert;
import org.junit.Test;

/**
 * Created by student on 2016/10/10.
 */
public class TemporaryLoginTest {

    @Test
    public void testObjectCreation() throws Exception {
       User user = new User.Builder()
                .id("1")
                .contactDetails(null)
                .location(null)
                .name("Ferin")
                .rating(5)
                .build();

        TemporaryLogin temporaryLogin = new TemporaryLogin.Builder()
                .user(user)
                .code("123")
                .id("1")
                .build();

        Assert.assertNotNull(temporaryLogin);
        Assert.assertEquals(temporaryLogin.getCode(), "123");

    }
}
