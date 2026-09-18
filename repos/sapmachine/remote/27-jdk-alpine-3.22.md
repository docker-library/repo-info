## `sapmachine:27-jdk-alpine-3.22`

```console
$ docker pull sapmachine@sha256:e381592eb9a26638660f5bc38ed3be57e45d7203ce7483d935e2daaaff2eb91d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `sapmachine:27-jdk-alpine-3.22` - linux; amd64

```console
$ docker pull sapmachine@sha256:ae11731054f983a0004c3f84365e35847ea3cafeab5a5b91f572901a45ae4b88
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **142.8 MB (142763042 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d7df0da1175300d557e95e54cf74d5968f3d2b46ac9a61c8965cdb2417f92ac4`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:44 GMT
ADD alpine-minirootfs-3.22.6-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:44 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:56:37 GMT
RUN wget -qO /etc/apk/keys/sapmachine-apk.rsa.pub https://dist.sapmachine.io/alpine/sapmachine-apk.rsa.pub &&     echo "4444e47cabf35695f9406692848de191d3b7cbd47dcdc1ffb62f4f70aea06e89 /etc/apk/keys/sapmachine-apk.rsa.pub" | sha256sum -c - &&     echo "https://dist.sapmachine.io/alpine" >> /etc/apk/repositories &&     apk add sapmachine-27-jdk=27-r0 # buildkit
# Thu, 17 Sep 2026 21:56:37 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-27-sapmachine-jdk
# Thu, 17 Sep 2026 21:56:37 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:53f8f5e03afd86ade91b7aa57a749f5a3d1419c113be5d8c10e7ee61bb5ab887`  
		Last Modified: Thu, 17 Sep 2026 20:37:49 GMT  
		Size: 3.8 MB (3792075 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dfb01e1d1e5c653a22e14e4fc168cbafa6c3f42c3d67344b0492fd988fe73831`  
		Last Modified: Thu, 17 Sep 2026 21:56:54 GMT  
		Size: 139.0 MB (138970967 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:27-jdk-alpine-3.22` - unknown; unknown

```console
$ docker pull sapmachine@sha256:1a91237133171e325ffa5cdff042a8d04a928c7e6da903a215cca5175855a08a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **460.4 KB (460389 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d2364f3f0396e4c7028dd808272924a50496455e44daeb1d8cc0e612cbbdae6`

```dockerfile
```

-	Layers:
	-	`sha256:a7558ec5fd397794dc5b85bcc790bb24810498345347023130c5723e0ca6262d`  
		Last Modified: Thu, 17 Sep 2026 21:56:51 GMT  
		Size: 452.8 KB (452812 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c645f6dc729c9b7f7b9a93d2ce2d9bb3b93b96e98221ada0a5e6f4364777ca39`  
		Last Modified: Thu, 17 Sep 2026 21:56:51 GMT  
		Size: 7.6 KB (7577 bytes)  
		MIME: application/vnd.in-toto+json
