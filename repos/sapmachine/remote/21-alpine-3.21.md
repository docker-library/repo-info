## `sapmachine:21-alpine-3.21`

```console
$ docker pull sapmachine@sha256:5a672e8c3f95c4a3476a0cda5e769127c43d5ff8b2f6fd9934f6915f906dbb82
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `sapmachine:21-alpine-3.21` - linux; amd64

```console
$ docker pull sapmachine@sha256:9828e711ad896cb20f5dfa76d7c3904afa7d7f1435ddcc92d24cb686cfeb8955
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **222.9 MB (222922780 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2d7e96ea6b0695517825b7eefaa1e7b625d172d2a0784a2c14c5ac442e8a26fa`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 16 Apr 2026 23:53:15 GMT
ADD alpine-minirootfs-3.21.7-x86_64.tar.gz / # buildkit
# Thu, 16 Apr 2026 23:53:15 GMT
CMD ["/bin/sh"]
# Thu, 20 Aug 2026 18:07:36 GMT
RUN wget -qO /etc/apk/keys/sapmachine-apk.rsa.pub https://dist.sapmachine.io/alpine/sapmachine-apk.rsa.pub &&     echo "4444e47cabf35695f9406692848de191d3b7cbd47dcdc1ffb62f4f70aea06e89 /etc/apk/keys/sapmachine-apk.rsa.pub" | sha256sum -c - &&     echo "https://dist.sapmachine.io/alpine" >> /etc/apk/repositories &&     apk add sapmachine-21-jdk=21.0.12.1-r0 # buildkit
# Thu, 20 Aug 2026 18:07:36 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-21-sapmachine-jdk
# Thu, 20 Aug 2026 18:07:36 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:897d797d2723cf0e318402f4d6f37d51b011517e5cf09246b22155f0fa90dc81`  
		Last Modified: Thu, 16 Apr 2026 05:32:55 GMT  
		Size: 3.6 MB (3646875 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a7d66bacc52349cfac4cb6553d6ac80eb8ee3594525ee63f8e9a80b72e250c4`  
		Last Modified: Thu, 20 Aug 2026 18:07:56 GMT  
		Size: 219.3 MB (219275905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:21-alpine-3.21` - unknown; unknown

```console
$ docker pull sapmachine@sha256:51277d5928c88bbb782e5326435ac09221b7c681e8209d8148c7e6048b4c8d19
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **523.7 KB (523691 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:006a7923b26db5f562a911a1890871ed8f0e100d944339c9eddb780803b413e7`

```dockerfile
```

-	Layers:
	-	`sha256:7d6091d2ad8236eab4e6625c787b511c2b64a8d4d95a5b4912406b091a7343a3`  
		Last Modified: Thu, 20 Aug 2026 18:07:51 GMT  
		Size: 516.1 KB (516058 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6e5a61a8dd021ce40c0a2b1c70948c15c1021a0e2e3d0bc68fcd1d3e31531c74`  
		Last Modified: Thu, 20 Aug 2026 18:07:51 GMT  
		Size: 7.6 KB (7633 bytes)  
		MIME: application/vnd.in-toto+json
