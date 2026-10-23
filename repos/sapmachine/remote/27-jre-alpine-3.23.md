## `sapmachine:27-jre-alpine-3.23`

```console
$ docker pull sapmachine@sha256:4a0c19b147388b1fa7f778f6522b38bf03deb8f3b5f9717cb64e39090b356ddc
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `sapmachine:27-jre-alpine-3.23` - linux; amd64

```console
$ docker pull sapmachine@sha256:7dac737f3231bae77409ba4c0c5b6d529349da91ab8375782fbc32f733b02622
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.5 MB (64472714 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:513ff85bf4640290851e135bcd2b749713943cf5175b9a84b93c950d146a6081`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:55 GMT
ADD alpine-minirootfs-3.23.7-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:55 GMT
CMD ["/bin/sh"]
# Fri, 23 Oct 2026 16:54:20 GMT
RUN wget -qO /etc/apk/keys/sapmachine-apk.rsa.pub https://dist.sapmachine.io/alpine/sapmachine-apk.rsa.pub &&     echo "4444e47cabf35695f9406692848de191d3b7cbd47dcdc1ffb62f4f70aea06e89 /etc/apk/keys/sapmachine-apk.rsa.pub" | sha256sum -c - &&     echo "https://dist.sapmachine.io/alpine" >> /etc/apk/repositories &&     apk add sapmachine-27-jre=27.0.1.0.2-r0 # buildkit
# Fri, 23 Oct 2026 16:54:20 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-27-sapmachine-jre
# Fri, 23 Oct 2026 16:54:20 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:5e9b4a97f6395abf54a5c584be133078deb2295e280dd0b9e77638874d07b637`  
		Last Modified: Wed, 21 Oct 2026 20:47:02 GMT  
		Size: 3.9 MB (3852227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:034e3311dc162ac54f6f02b1eaf5b88b4cee2e8f851635124b0c70857b8cd3dd`  
		Last Modified: Fri, 23 Oct 2026 16:54:33 GMT  
		Size: 60.6 MB (60620487 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:27-jre-alpine-3.23` - unknown; unknown

```console
$ docker pull sapmachine@sha256:6e604f7ef329ca14f31a6b4f7bffd4a00fb297966c5e873c188cb00b3399bf2d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **440.1 KB (440142 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a1985cd4ce7b674ce2f56ac25837ab66e26225cc23d361773f4dd099f7f34b29`

```dockerfile
```

-	Layers:
	-	`sha256:e640e8552c741c75370f28672a84ad77b60bb777a542d8545cf0c5637676c131`  
		Last Modified: Fri, 23 Oct 2026 16:54:31 GMT  
		Size: 431.9 KB (431875 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:568e01423727c7d1f05587988c55c007d462b52df7da6029fd20d88c017735e7`  
		Last Modified: Fri, 23 Oct 2026 16:54:31 GMT  
		Size: 8.3 KB (8267 bytes)  
		MIME: application/vnd.in-toto+json
