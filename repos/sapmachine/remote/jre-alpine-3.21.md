## `sapmachine:jre-alpine-3.21`

```console
$ docker pull sapmachine@sha256:59a774b948b279f35210892a1ff2fdae561ef9bdd6ec31295dc583e2f5500582
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `sapmachine:jre-alpine-3.21` - linux; amd64

```console
$ docker pull sapmachine@sha256:5f6a56e146bf1a4cdc26379ccc1740bb7c44020bebb2896bb41af2ac129a8cff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.7 MB (63693574 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:478c3fccf69f5010b8b59200f60ccfca6ff089520469ac0e7125fa81b335c14e`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 16 Apr 2026 23:53:15 GMT
ADD alpine-minirootfs-3.21.7-x86_64.tar.gz / # buildkit
# Thu, 16 Apr 2026 23:53:15 GMT
CMD ["/bin/sh"]
# Wed, 16 Sep 2026 16:36:25 GMT
RUN wget -qO /etc/apk/keys/sapmachine-apk.rsa.pub https://dist.sapmachine.io/alpine/sapmachine-apk.rsa.pub &&     echo "4444e47cabf35695f9406692848de191d3b7cbd47dcdc1ffb62f4f70aea06e89 /etc/apk/keys/sapmachine-apk.rsa.pub" | sha256sum -c - &&     echo "https://dist.sapmachine.io/alpine" >> /etc/apk/repositories &&     apk add sapmachine-27-jre=27-r0 # buildkit
# Wed, 16 Sep 2026 16:36:25 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-27-sapmachine-jre
# Wed, 16 Sep 2026 16:36:25 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:897d797d2723cf0e318402f4d6f37d51b011517e5cf09246b22155f0fa90dc81`  
		Last Modified: Thu, 16 Apr 2026 05:32:55 GMT  
		Size: 3.6 MB (3646875 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89882a49dd661050d56a4d6181211a0bbd68491bfdcda424b24458e1d32c6be9`  
		Last Modified: Wed, 16 Sep 2026 16:36:38 GMT  
		Size: 60.0 MB (60046699 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:jre-alpine-3.21` - unknown; unknown

```console
$ docker pull sapmachine@sha256:8a1bd9550d92570bf41272a5786f6f4728398649880460a0a1c9bfafc6c93fe3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **437.5 KB (437543 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:badbfc2c7a8f0b2b3aef76d4025a45652356765255a90e1d52837443f4e994c8`

```dockerfile
```

-	Layers:
	-	`sha256:cd1f0836d2d88d0b342a7669e136a653741c7fc4eede7f740eb075f8af4cc91a`  
		Last Modified: Wed, 16 Sep 2026 16:36:36 GMT  
		Size: 430.6 KB (430608 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:eb923907486721a08e8c55e820185a501032cf77ff7fffa855f5bdbd97e2d1fb`  
		Last Modified: Wed, 16 Sep 2026 16:36:36 GMT  
		Size: 6.9 KB (6935 bytes)  
		MIME: application/vnd.in-toto+json
