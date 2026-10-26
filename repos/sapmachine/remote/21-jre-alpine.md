## `sapmachine:21-jre-alpine`

```console
$ docker pull sapmachine@sha256:569e73702b752f4c73affa512f0fbb27b6e60b664e6ec32ecf0acaa5fdeda9e3
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `sapmachine:21-jre-alpine` - linux; amd64

```console
$ docker pull sapmachine@sha256:f551c10fa474b5e98ebf9a2687a6187486719f55ea6b76fd8b20f85c9c86001c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **67.0 MB (67001656 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c6a8b063733de37d596b471b917879f50596ee30e44fe2c723b0d9f5ba12a7da`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:55 GMT
ADD alpine-minirootfs-3.23.7-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:55 GMT
CMD ["/bin/sh"]
# Mon, 26 Oct 2026 17:52:40 GMT
RUN wget -qO /etc/apk/keys/sapmachine-apk.rsa.pub https://dist.sapmachine.io/alpine/sapmachine-apk.rsa.pub &&     echo "4444e47cabf35695f9406692848de191d3b7cbd47dcdc1ffb62f4f70aea06e89 /etc/apk/keys/sapmachine-apk.rsa.pub" | sha256sum -c - &&     echo "https://dist.sapmachine.io/alpine" >> /etc/apk/repositories &&     apk add sapmachine-21-jre=21.0.13.0.3-r0 # buildkit
# Mon, 26 Oct 2026 17:52:40 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-21-sapmachine-jre
# Mon, 26 Oct 2026 17:52:40 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:5e9b4a97f6395abf54a5c584be133078deb2295e280dd0b9e77638874d07b637`  
		Last Modified: Wed, 21 Oct 2026 20:47:02 GMT  
		Size: 3.9 MB (3852227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dfb831b03516140de43bb9346cd12f984cd6b1c202be756538dfac836265402f`  
		Last Modified: Mon, 26 Oct 2026 17:52:53 GMT  
		Size: 63.1 MB (63149429 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:21-jre-alpine` - unknown; unknown

```console
$ docker pull sapmachine@sha256:655721b23e7877acdf5aacda195060077d29a3475ecebadd6e55ee75f1878c85
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **436.2 KB (436242 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:38d535dacb410284d604dfb22d5ff11900b17a92349e40d8a2063b31b71be579`

```dockerfile
```

-	Layers:
	-	`sha256:46d6965d1adcfbccb94e65f2a5f3f1026f4d1067ad52d6881416fdb2a2df2f15`  
		Last Modified: Mon, 26 Oct 2026 17:52:51 GMT  
		Size: 428.6 KB (428604 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:100afd962d428823369df130159cb4bab5fda375fff659273a4517f7e5f894d3`  
		Last Modified: Mon, 26 Oct 2026 17:52:51 GMT  
		Size: 7.6 KB (7638 bytes)  
		MIME: application/vnd.in-toto+json
