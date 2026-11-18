## `sapmachine:21-jre-alpine-3.21`

```console
$ docker pull sapmachine@sha256:9a91ff458f25802f04948f1fa48c03a49036640927ef3321092be597c62717ea
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `sapmachine:21-jre-alpine-3.21` - linux; amd64

```console
$ docker pull sapmachine@sha256:6abf568af2cf2fe8ad9b522f97e106031fe5d45ca5c910ccf04b2f7d21d652a6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.2 MB (66226919 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e1b14039bc5acd65099018ce366326fee678671ffcc4b0c023b9a672fde6e9b9`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:43 GMT
ADD alpine-minirootfs-3.21.10-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:43 GMT
CMD ["/bin/sh"]
# Wed, 18 Nov 2026 16:42:29 GMT
RUN wget -qO /etc/apk/keys/sapmachine-apk.rsa.pub https://dist.sapmachine.io/alpine/sapmachine-apk.rsa.pub &&     echo "4444e47cabf35695f9406692848de191d3b7cbd47dcdc1ffb62f4f70aea06e89 /etc/apk/keys/sapmachine-apk.rsa.pub" | sha256sum -c - &&     echo "https://dist.sapmachine.io/alpine" >> /etc/apk/repositories &&     apk add sapmachine-21-jre=21.0.13.1-r0 # buildkit
# Wed, 18 Nov 2026 16:42:29 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-21-sapmachine-jre
# Wed, 18 Nov 2026 16:42:29 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:871d48e9bf6b789a439a4a19c1e152009924d818e60f7c51e498573223cd7cda`  
		Last Modified: Thu, 05 Nov 2026 18:00:48 GMT  
		Size: 3.6 MB (3625402 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:527cb201648fb20ed828ec116d4074c3b414bd188153d11df955513c5d9f5fa3`  
		Last Modified: Wed, 18 Nov 2026 16:42:41 GMT  
		Size: 62.6 MB (62601517 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:21-jre-alpine-3.21` - unknown; unknown

```console
$ docker pull sapmachine@sha256:3c6b2cd1e60b82d47b91c1185aa541637be572f40392604ddf1055daaa4fce4e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **435.2 KB (435163 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bb7fe6f362cc12d14658150224ad6e30637c0495365dbd80fca3564aefa3d879`

```dockerfile
```

-	Layers:
	-	`sha256:12409ed07f89fae56d57a3403263db69e9dd465cf17af76f43da60766556862d`  
		Last Modified: Wed, 18 Nov 2026 16:42:39 GMT  
		Size: 428.2 KB (428193 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a67c7919840fd6353707a9a4d80079d7260655ec1c3e028233095a5b6b5b3c9b`  
		Last Modified: Wed, 18 Nov 2026 16:42:39 GMT  
		Size: 7.0 KB (6970 bytes)  
		MIME: application/vnd.in-toto+json
