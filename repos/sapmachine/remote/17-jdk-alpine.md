## `sapmachine:17-jdk-alpine`

```console
$ docker pull sapmachine@sha256:99191409268fcb56694f8eb0b69a3a6b1eaf743f936ad40db629fff0e62f9562
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `sapmachine:17-jdk-alpine` - linux; amd64

```console
$ docker pull sapmachine@sha256:d01eed5668b53568e5a510e6f0431ae9366f986f6e747d39b1321616ff8618f1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **208.4 MB (208402952 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:860039ec24752a12bed7847a46442478ebf6a7f1b651214d375c7a8371886567`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:33 GMT
ADD alpine-minirootfs-3.23.6-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:33 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:57:59 GMT
RUN wget -qO /etc/apk/keys/sapmachine-apk.rsa.pub https://dist.sapmachine.io/alpine/sapmachine-apk.rsa.pub &&     echo "4444e47cabf35695f9406692848de191d3b7cbd47dcdc1ffb62f4f70aea06e89 /etc/apk/keys/sapmachine-apk.rsa.pub" | sha256sum -c - &&     echo "https://dist.sapmachine.io/alpine" >> /etc/apk/repositories &&     apk add sapmachine-17-jdk=17.0.20.1-r0 # buildkit
# Thu, 17 Sep 2026 21:57:59 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-sapmachine-jdk
# Thu, 17 Sep 2026 21:57:59 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:d0c1d894c237d8192cbcd37e435031ad4eddec173299568a5a05869c2e40dfa3`  
		Last Modified: Thu, 17 Sep 2026 20:37:37 GMT  
		Size: 3.8 MB (3848507 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d47158eb7822ae394ee996f390738676989f46ce256e5693b6983b74e3fa6512`  
		Last Modified: Thu, 17 Sep 2026 21:58:19 GMT  
		Size: 204.6 MB (204554445 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:17-jdk-alpine` - unknown; unknown

```console
$ docker pull sapmachine@sha256:4077d323893ca206ef6775a5cebcd5c80827a393863c4598ecf1924a72ded9ec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **521.6 KB (521608 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f09fef08a5509c6196a4b41afbf3872e15db5ab47412d5cd5c953eb558f604f`

```dockerfile
```

-	Layers:
	-	`sha256:e15f3d41d66b797307a5e0b9e66dcd73546c6d60c8304f313013faf2b60509cc`  
		Last Modified: Thu, 17 Sep 2026 21:58:14 GMT  
		Size: 512.7 KB (512683 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d5e2ec04bd375bd1261d65893bfebddf9b0829c1807f4244d67176903f5d3a18`  
		Last Modified: Thu, 17 Sep 2026 21:58:14 GMT  
		Size: 8.9 KB (8925 bytes)  
		MIME: application/vnd.in-toto+json
