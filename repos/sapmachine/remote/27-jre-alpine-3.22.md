## `sapmachine:27-jre-alpine-3.22`

```console
$ docker pull sapmachine@sha256:923bda357fef062a9ce1bf0c57b76a6f69d53d2a6146e037494a1660d19d8d32
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `sapmachine:27-jre-alpine-3.22` - linux; amd64

```console
$ docker pull sapmachine@sha256:4996f9906274cdfdbf0e73a5632e8bf0e95916bc1c57bbbb56cc5e13fcde7470
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.0 MB (63991594 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:149eecba59bbd42a1e23f80f0739ae4911752b884c976d73940c38d7f135574f`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:01:05 GMT
ADD alpine-minirootfs-3.22.8-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:01:05 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:35:49 GMT
RUN wget -qO /etc/apk/keys/sapmachine-apk.rsa.pub https://dist.sapmachine.io/alpine/sapmachine-apk.rsa.pub &&     echo "4444e47cabf35695f9406692848de191d3b7cbd47dcdc1ffb62f4f70aea06e89 /etc/apk/keys/sapmachine-apk.rsa.pub" | sha256sum -c - &&     echo "https://dist.sapmachine.io/alpine" >> /etc/apk/repositories &&     apk add sapmachine-27-jre=27.0.1.0.3-r0 # buildkit
# Thu, 05 Nov 2026 19:35:49 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-27-sapmachine-jre
# Thu, 05 Nov 2026 19:35:49 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:710f3da1112f360bed5d2908205aeee86b9d04ecd471354cf7049a2f0bdb5c72`  
		Last Modified: Thu, 05 Nov 2026 18:01:11 GMT  
		Size: 3.8 MB (3794375 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e17a18d2089500e6c2e1c9d8ad1b95997267b1d3fe290d318bfa75df1189cc6`  
		Last Modified: Thu, 05 Nov 2026 19:36:02 GMT  
		Size: 60.2 MB (60197219 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:27-jre-alpine-3.22` - unknown; unknown

```console
$ docker pull sapmachine@sha256:c19b55e3f419d58d4baaefa9770d285429d9193f57c71715a879b6537e850c5f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **437.6 KB (437554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2cd9b5fda1d43040aeea8ff0821b9913a113a050c165317651fb099e2b18d5e3`

```dockerfile
```

-	Layers:
	-	`sha256:9de1fda146be8d4061bd8cea5efa21f7d9974b414f923bb4873160954dab49e8`  
		Last Modified: Thu, 05 Nov 2026 19:36:00 GMT  
		Size: 430.3 KB (430257 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:126a43b0773d4d261455d9d4fc84ada43d8bc074de401138a2d7ca33a34b0212`  
		Last Modified: Thu, 05 Nov 2026 19:36:00 GMT  
		Size: 7.3 KB (7297 bytes)  
		MIME: application/vnd.in-toto+json
