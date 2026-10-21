## `sapmachine:27-jre-alpine-3.23`

```console
$ docker pull sapmachine@sha256:023dc1d33dd79d16aaf62eb548549cc5717622ad8a0528c026eee939362ffdee
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `sapmachine:27-jre-alpine-3.23` - linux; amd64

```console
$ docker pull sapmachine@sha256:f67aeb13f4c89fd178352324bb451c10aab3ef6b6e638b436267fe089bfb7501
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.5 MB (64462340 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e932d35a533e46ea087045b8c73873fa48a483edb0684470afc55d4f65570cc`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:55 GMT
ADD alpine-minirootfs-3.23.7-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:55 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 22:12:31 GMT
RUN wget -qO /etc/apk/keys/sapmachine-apk.rsa.pub https://dist.sapmachine.io/alpine/sapmachine-apk.rsa.pub &&     echo "4444e47cabf35695f9406692848de191d3b7cbd47dcdc1ffb62f4f70aea06e89 /etc/apk/keys/sapmachine-apk.rsa.pub" | sha256sum -c - &&     echo "https://dist.sapmachine.io/alpine" >> /etc/apk/repositories &&     apk add sapmachine-27-jre=27.0.1-r0 # buildkit
# Wed, 21 Oct 2026 22:12:31 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-27-sapmachine-jre
# Wed, 21 Oct 2026 22:12:31 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:5e9b4a97f6395abf54a5c584be133078deb2295e280dd0b9e77638874d07b637`  
		Last Modified: Wed, 21 Oct 2026 20:47:02 GMT  
		Size: 3.9 MB (3852227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3986b0c03f5f68705aecedd8ceff600840d1e2eacda264502e9c163563785cd`  
		Last Modified: Wed, 21 Oct 2026 22:12:44 GMT  
		Size: 60.6 MB (60610113 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:27-jre-alpine-3.23` - unknown; unknown

```console
$ docker pull sapmachine@sha256:a27fb4649227343c7ca9f2c4b8c1efd5eeb04b6020c18aeffe038cdc1079bd31
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **440.1 KB (440086 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:45cffa0ef01afe85f5f8f993b20cc743d39b112b6e1f24c8d10c97a4e60f816c`

```dockerfile
```

-	Layers:
	-	`sha256:9173e164691add9d804bfd79f7f1a8e9deb00543e8d3034cb0d9d491ea2a9c86`  
		Last Modified: Wed, 21 Oct 2026 22:12:42 GMT  
		Size: 431.8 KB (431843 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a4c82e87b6ae13277eeb3d1a550f0c707d1157cfc69ec1c17ade16c9c9a9a472`  
		Last Modified: Wed, 21 Oct 2026 22:12:42 GMT  
		Size: 8.2 KB (8243 bytes)  
		MIME: application/vnd.in-toto+json
