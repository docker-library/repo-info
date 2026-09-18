## `sapmachine:17-jre-alpine-3.24`

```console
$ docker pull sapmachine@sha256:6614e684cb4cdffd7fd6e50f7b068fc0997779e37988b4f4386592c2eca282f9
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `sapmachine:17-jre-alpine-3.24` - linux; amd64

```console
$ docker pull sapmachine@sha256:71ac2e86fc16c91d2ec0629c874a7d6d110aa623395ba59753d8ca25173b5137
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.0 MB (61036975 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:210a877fc603bcd5a289088115b9131623f3d982a513f27055daef6bb3c078b4`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:20 GMT
ADD alpine-minirootfs-3.24.2-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:20 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:57:39 GMT
RUN wget -qO /etc/apk/keys/sapmachine-apk.rsa.pub https://dist.sapmachine.io/alpine/sapmachine-apk.rsa.pub &&     echo "4444e47cabf35695f9406692848de191d3b7cbd47dcdc1ffb62f4f70aea06e89 /etc/apk/keys/sapmachine-apk.rsa.pub" | sha256sum -c - &&     echo "https://dist.sapmachine.io/alpine" >> /etc/apk/repositories &&     apk add sapmachine-17-jre=17.0.20.1-r0 # buildkit
# Thu, 17 Sep 2026 21:57:39 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-sapmachine-jre
# Thu, 17 Sep 2026 21:57:39 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:e2de96513ba9eb53b431787ec8a65cdde380ac4772a3e4c4b714dcfde2a102b5`  
		Last Modified: Thu, 17 Sep 2026 20:37:26 GMT  
		Size: 3.8 MB (3849738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a8235553c837ee64ca1087369cbb44a16aebf874be26c2cb3e5d859c40d0beb`  
		Last Modified: Thu, 17 Sep 2026 21:57:51 GMT  
		Size: 57.2 MB (57187237 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:17-jre-alpine-3.24` - unknown; unknown

```console
$ docker pull sapmachine@sha256:a6284441816033dcae70018fb769570296abd6a43115cf9faa4c5225bc2ea0dd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **433.7 KB (433695 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:baa411d07a4d410cd8f534fd6e373c5a096e5d52265c1cd2d5c719b09554bc59`

```dockerfile
```

-	Layers:
	-	`sha256:fb70cbbe648bbb8e083cd60fcba4d1664d2489594085a573ec84aada08357c64`  
		Last Modified: Thu, 17 Sep 2026 21:57:49 GMT  
		Size: 426.7 KB (426725 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1e0219586e5fcdf186f5fda7d4fe5b152a8d5e02001ec2ff9fbcb5b38b069f57`  
		Last Modified: Thu, 17 Sep 2026 21:57:49 GMT  
		Size: 7.0 KB (6970 bytes)  
		MIME: application/vnd.in-toto+json
