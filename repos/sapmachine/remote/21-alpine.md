## `sapmachine:21-alpine`

```console
$ docker pull sapmachine@sha256:f0f21f4d3fa16c076d5fa4d526c603096e33dc74ed6617cc646f6d1021974cf8
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `sapmachine:21-alpine` - linux; amd64

```console
$ docker pull sapmachine@sha256:f212899f86ffa2173cc164be3ad8a67a93098409d476b168146e0e540b3725c2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **224.1 MB (224059010 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d5082e0c5fa3cb3820ff338afecb20a5a4776663b3f772c2977002eec0b06ca4`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:51 GMT
ADD alpine-minirootfs-3.23.8-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:51 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:36:47 GMT
RUN wget -qO /etc/apk/keys/sapmachine-apk.rsa.pub https://dist.sapmachine.io/alpine/sapmachine-apk.rsa.pub &&     echo "4444e47cabf35695f9406692848de191d3b7cbd47dcdc1ffb62f4f70aea06e89 /etc/apk/keys/sapmachine-apk.rsa.pub" | sha256sum -c - &&     echo "https://dist.sapmachine.io/alpine" >> /etc/apk/repositories &&     apk add sapmachine-21-jdk=21.0.13.0.3-r0 # buildkit
# Thu, 05 Nov 2026 19:36:47 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-21-sapmachine-jdk
# Thu, 05 Nov 2026 19:36:47 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:74c614fb2c68574f50c582dcc9c18c46618bd6ff2019768190aacfb861ce51d2`  
		Last Modified: Thu, 05 Nov 2026 18:00:58 GMT  
		Size: 3.9 MB (3852589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21b0f3e5aeb848410c3e264d83f8ac14c62f9a857a5a334b13d83c643f2d5797`  
		Last Modified: Thu, 05 Nov 2026 19:37:10 GMT  
		Size: 220.2 MB (220206421 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:21-alpine` - unknown; unknown

```console
$ docker pull sapmachine@sha256:15284aca4d1eb9df93a32095681d14796bc1ea9c226c45a83b7a85d13f9cb423
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **523.6 KB (523555 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5cb23d14f50cd49fb138172e334ec6f6dc822c547d012279f93affee400613e1`

```dockerfile
```

-	Layers:
	-	`sha256:32a6781f23c38492d0e2be7c846b0dfc445ce1466a750b6f6c6886e82bec5090`  
		Last Modified: Thu, 05 Nov 2026 19:37:05 GMT  
		Size: 514.6 KB (514609 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:33ed3f1e7bfc513409a3e2d0be95e0c856ff5f8860185bfd57c9e885e75dbea4`  
		Last Modified: Thu, 05 Nov 2026 19:37:05 GMT  
		Size: 8.9 KB (8946 bytes)  
		MIME: application/vnd.in-toto+json
