## `sapmachine:26-jre-alpine-3.23`

```console
$ docker pull sapmachine@sha256:945e96d7e68200a2c9d0629fd0084487c5a9b634cfe2e1bf56f928fdcab525ce
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `sapmachine:26-jre-alpine-3.23` - linux; amd64

```console
$ docker pull sapmachine@sha256:e023fd44aab89df5ec88d5780c62d9e1dc1fde296353708d77e8278befdaab80
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **65.5 MB (65456632 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a792f3ec57bd4ae4a8d066c45ec248ab6f1cf27bc583d135f1846eacdc51eb6`
-	Default Command: `["sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:09 GMT
ADD alpine-minirootfs-3.23.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:09 GMT
CMD ["/bin/sh"]
# Wed, 22 Jul 2026 18:23:10 GMT
RUN wget -qO /etc/apk/keys/sapmachine-apk.rsa.pub https://dist.sapmachine.io/alpine/sapmachine-apk.rsa.pub &&     echo "4444e47cabf35695f9406692848de191d3b7cbd47dcdc1ffb62f4f70aea06e89 /etc/apk/keys/sapmachine-apk.rsa.pub" | sha256sum -c - &&     echo "https://dist.sapmachine.io/alpine" >> /etc/apk/repositories &&     apk add sapmachine-26-jre=26.0.2-r0 # buildkit
# Wed, 22 Jul 2026 18:23:10 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-26-sapmachine-jre
# Wed, 22 Jul 2026 18:23:10 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:e6f31ffc071e5560b82a8685fba8214954e5721e3e49269d00958316edbe89fe`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.8 MB (3844421 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6837c39f1594efcee39b4e20e7e9e069171b2d9f3d3b877398d0ad814610850e`  
		Last Modified: Wed, 22 Jul 2026 18:23:23 GMT  
		Size: 61.6 MB (61612211 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:26-jre-alpine-3.23` - unknown; unknown

```console
$ docker pull sapmachine@sha256:fb0838e572fe7a011ab8aec3d0b8ff832606e76224996c87cc45cced742f7af5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **440.1 KB (440079 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c05bd45940e8bb51ad78ae4bb9acbdd286de4344ae953f4d3f8cef84f1fbc8a`

```dockerfile
```

-	Layers:
	-	`sha256:b839e3767e4a6c3b3ec472b2a4034216be757c877afd5446ad1b086527cf6bc6`  
		Last Modified: Wed, 22 Jul 2026 18:23:21 GMT  
		Size: 431.8 KB (431836 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6edabee3c988452f9560ea4c1dd15a814202ea078169e16ca94e1484f324c4fb`  
		Last Modified: Wed, 22 Jul 2026 18:23:21 GMT  
		Size: 8.2 KB (8243 bytes)  
		MIME: application/vnd.in-toto+json
