## `sapmachine:jre-alpine`

```console
$ docker pull sapmachine@sha256:9f75ff99eef88570e1b7456e3cfaf8447147daa3fb8e4b3ea6e985dfd745b896
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `sapmachine:jre-alpine` - linux; amd64

```console
$ docker pull sapmachine@sha256:e91242092b29edb0ab5f5c72d2ca1dfd380164a3b8bbc830972e07dc9db7a406
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.5 MB (64474749 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2bc5511d03fd4e39c34078af926809e355c2edf73670a2af8769f273da1e2454`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:51 GMT
ADD alpine-minirootfs-3.23.8-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:51 GMT
CMD ["/bin/sh"]
# Wed, 18 Nov 2026 16:39:46 GMT
RUN wget -qO /etc/apk/keys/sapmachine-apk.rsa.pub https://dist.sapmachine.io/alpine/sapmachine-apk.rsa.pub &&     echo "4444e47cabf35695f9406692848de191d3b7cbd47dcdc1ffb62f4f70aea06e89 /etc/apk/keys/sapmachine-apk.rsa.pub" | sha256sum -c - &&     echo "https://dist.sapmachine.io/alpine" >> /etc/apk/repositories &&     apk add sapmachine-27-jre=27.0.1.1-r0 # buildkit
# Wed, 18 Nov 2026 16:39:46 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-27-sapmachine-jre
# Wed, 18 Nov 2026 16:39:46 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:74c614fb2c68574f50c582dcc9c18c46618bd6ff2019768190aacfb861ce51d2`  
		Last Modified: Thu, 05 Nov 2026 18:00:58 GMT  
		Size: 3.9 MB (3852589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a28334187fcb979e3b1df0ef3cd197f955f1943ecb647b94fb2e6b86b272acc8`  
		Last Modified: Wed, 18 Nov 2026 16:40:00 GMT  
		Size: 60.6 MB (60622160 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:jre-alpine` - unknown; unknown

```console
$ docker pull sapmachine@sha256:2249c6365f41b377fb057ab0148c19d98e53fd269228a240b5c2829fce8e7ccc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **440.1 KB (440120 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e681edf573acc89029482882501765eccd3c3dbbfa4228e391c89903bcd2a67b`

```dockerfile
```

-	Layers:
	-	`sha256:9c64cc9ed35b64eb77b9cd96bf25188846097b639bb5f7237f5e4d44cf640717`  
		Last Modified: Wed, 18 Nov 2026 16:39:57 GMT  
		Size: 431.9 KB (431863 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d020facb93f31818464ca2f0665a492478434c1758ed814fe27b440e906c7467`  
		Last Modified: Wed, 18 Nov 2026 16:39:57 GMT  
		Size: 8.3 KB (8257 bytes)  
		MIME: application/vnd.in-toto+json
