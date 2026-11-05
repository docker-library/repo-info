## `sapmachine:lts-jre-alpine-3.24`

```console
$ docker pull sapmachine@sha256:41f24998d83aa4a45257734544e0337e055dff46343d2d79b86014109e330c1b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `sapmachine:lts-jre-alpine-3.24` - linux; amd64

```console
$ docker pull sapmachine@sha256:5a4d58d50ebdd36a150e792f18952e95691831c388f1c00fd42ac668a798df1b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.4 MB (64394947 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a48abaf08836526380702083042ccb853b69c5e67175e40102ee48f02c13a901`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:28 GMT
ADD alpine-minirootfs-3.24.4-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:28 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:36:03 GMT
RUN wget -qO /etc/apk/keys/sapmachine-apk.rsa.pub https://dist.sapmachine.io/alpine/sapmachine-apk.rsa.pub &&     echo "4444e47cabf35695f9406692848de191d3b7cbd47dcdc1ffb62f4f70aea06e89 /etc/apk/keys/sapmachine-apk.rsa.pub" | sha256sum -c - &&     echo "https://dist.sapmachine.io/alpine" >> /etc/apk/repositories &&     apk add sapmachine-25-jre=25.0.5.0.3-r0 # buildkit
# Thu, 05 Nov 2026 19:36:03 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-25-sapmachine-jre
# Thu, 05 Nov 2026 19:36:03 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:881fc932939efef04ca120ad44bbd2c0917851eb247aa4995428afb1e80ede17`  
		Last Modified: Thu, 05 Nov 2026 18:00:35 GMT  
		Size: 3.9 MB (3853673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7806339310813a6d48877c62e4df1d33623a1055c2d6122d6ce52ec6053c2af1`  
		Last Modified: Thu, 05 Nov 2026 19:36:15 GMT  
		Size: 60.5 MB (60541274 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:lts-jre-alpine-3.24` - unknown; unknown

```console
$ docker pull sapmachine@sha256:ed2fa179b3cc2a5b45133320f98dd10d3e721833b157379670374b510648929e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **440.2 KB (440207 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c0dc382a0171dbd26399b225b9838d23cf7d13fc079df90ea66970a0de285333`

```dockerfile
```

-	Layers:
	-	`sha256:b327014bab60ac051396ca67239021e1948c05458408ac4baef98eae10a07160`  
		Last Modified: Thu, 05 Nov 2026 19:36:14 GMT  
		Size: 432.9 KB (432902 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c7b73c4aba81889e9ac150af03487e232c5e07d5622e0cbb89fb2551bd90cd6d`  
		Last Modified: Thu, 05 Nov 2026 19:36:13 GMT  
		Size: 7.3 KB (7305 bytes)  
		MIME: application/vnd.in-toto+json
