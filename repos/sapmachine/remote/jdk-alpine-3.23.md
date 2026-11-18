## `sapmachine:jdk-alpine-3.23`

```console
$ docker pull sapmachine@sha256:bcb7055cc6d7470ec422627918da340919db9d9ed371b0d27068ade96c61012d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `sapmachine:jdk-alpine-3.23` - linux; amd64

```console
$ docker pull sapmachine@sha256:825b43aa1f98d6f4a5df66cecb0153ae900c63d575a51e709660019b66e53365
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **143.3 MB (143295790 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9831355f6f2165419b72f1b41d13b71df96dff7efcda7099cfe8f043fdd9b16e`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:51 GMT
ADD alpine-minirootfs-3.23.8-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:51 GMT
CMD ["/bin/sh"]
# Wed, 18 Nov 2026 16:40:07 GMT
RUN wget -qO /etc/apk/keys/sapmachine-apk.rsa.pub https://dist.sapmachine.io/alpine/sapmachine-apk.rsa.pub &&     echo "4444e47cabf35695f9406692848de191d3b7cbd47dcdc1ffb62f4f70aea06e89 /etc/apk/keys/sapmachine-apk.rsa.pub" | sha256sum -c - &&     echo "https://dist.sapmachine.io/alpine" >> /etc/apk/repositories &&     apk add sapmachine-27-jdk=27.0.1.1-r0 # buildkit
# Wed, 18 Nov 2026 16:40:07 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-27-sapmachine-jdk
# Wed, 18 Nov 2026 16:40:07 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:74c614fb2c68574f50c582dcc9c18c46618bd6ff2019768190aacfb861ce51d2`  
		Last Modified: Thu, 05 Nov 2026 18:00:58 GMT  
		Size: 3.9 MB (3852589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51aa4b9c501f1b84cdb4c563fd2e36fd821f06f172ede35c76762e265ff6b108`  
		Last Modified: Wed, 18 Nov 2026 16:40:23 GMT  
		Size: 139.4 MB (139443201 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:jdk-alpine-3.23` - unknown; unknown

```console
$ docker pull sapmachine@sha256:486c0987108df2ab45602bcb737cccc1617d9f4f798808a89258734292e5beec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **466.3 KB (466252 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:656c4a8a7dc82b29d1a8c5d54e1d0f8bf877b0c2411f8231666a086e79fdba2b`

```dockerfile
```

-	Layers:
	-	`sha256:f99f4d95874c7df128059158fca8b6168069d3699fa53b36ab5f74b8b4f78625`  
		Last Modified: Wed, 18 Nov 2026 16:40:20 GMT  
		Size: 456.1 KB (456076 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3f219176de4706aa1aa54c0b7cd115a26ad3f3e1909639e370ca655c974b491b`  
		Last Modified: Wed, 18 Nov 2026 16:40:20 GMT  
		Size: 10.2 KB (10176 bytes)  
		MIME: application/vnd.in-toto+json
