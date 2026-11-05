## `sapmachine:lts-jre-alpine`

```console
$ docker pull sapmachine@sha256:14b15434db7e8312206cb8a583e38cf304203ff4558fc9d2601c03c89c6c220d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `sapmachine:lts-jre-alpine` - linux; amd64

```console
$ docker pull sapmachine@sha256:2d35ba036b4f38d5a3e4b735e66dd6a29baa24946f76d567b05260d6a6832f72
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.2 MB (64224821 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0bf347a147f958db555d4136019f7376700ce856c67185324f9c7a57586e7872`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:51 GMT
ADD alpine-minirootfs-3.23.8-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:51 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:36:11 GMT
RUN wget -qO /etc/apk/keys/sapmachine-apk.rsa.pub https://dist.sapmachine.io/alpine/sapmachine-apk.rsa.pub &&     echo "4444e47cabf35695f9406692848de191d3b7cbd47dcdc1ffb62f4f70aea06e89 /etc/apk/keys/sapmachine-apk.rsa.pub" | sha256sum -c - &&     echo "https://dist.sapmachine.io/alpine" >> /etc/apk/repositories &&     apk add sapmachine-25-jre=25.0.5.0.3-r0 # buildkit
# Thu, 05 Nov 2026 19:36:11 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-25-sapmachine-jre
# Thu, 05 Nov 2026 19:36:11 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:74c614fb2c68574f50c582dcc9c18c46618bd6ff2019768190aacfb861ce51d2`  
		Last Modified: Thu, 05 Nov 2026 18:00:58 GMT  
		Size: 3.9 MB (3852589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:07eaea348fb6f82dfe00e5af12ebdb0caaf849b6c1c3da560003922967313236`  
		Last Modified: Thu, 05 Nov 2026 19:36:23 GMT  
		Size: 60.4 MB (60372232 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:lts-jre-alpine` - unknown; unknown

```console
$ docker pull sapmachine@sha256:3273c66691de3633267c18896c0e514b8f2d4adf67486180f1561c35cfe60f31
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **442.1 KB (442095 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e2329835a15bc4bab75f8e61c835b890fcfdbc44c99c2c7d4604be96b7f2719`

```dockerfile
```

-	Layers:
	-	`sha256:248f6035ee49ee1fbee8a1247adc943d28f28fe3925394b855ed5076ffdd5ebe`  
		Last Modified: Thu, 05 Nov 2026 19:36:21 GMT  
		Size: 433.8 KB (433813 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6d15052b15e2c37135221be24fa529424b4220a4940640f4fa1d6d78913959d4`  
		Last Modified: Thu, 05 Nov 2026 19:36:21 GMT  
		Size: 8.3 KB (8282 bytes)  
		MIME: application/vnd.in-toto+json
