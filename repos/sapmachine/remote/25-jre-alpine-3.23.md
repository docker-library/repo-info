## `sapmachine:25-jre-alpine-3.23`

```console
$ docker pull sapmachine@sha256:c0d1e774b43211daf4f1af85f76c0faf7431f5bf2219a1c7abced385ec3d857a
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `sapmachine:25-jre-alpine-3.23` - linux; amd64

```console
$ docker pull sapmachine@sha256:75e84f2e5e60223b98f27410b8cbb768ff7975b57c67b3b622aaeaad0dbd0b39
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.2 MB (64152178 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:68a432128ef89381ded83deab2812d537c780bea73d2481f0eac48bebfb81f1e`
-	Default Command: `["sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:09 GMT
ADD alpine-minirootfs-3.23.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:09 GMT
CMD ["/bin/sh"]
# Wed, 22 Jul 2026 18:24:07 GMT
RUN wget -qO /etc/apk/keys/sapmachine-apk.rsa.pub https://dist.sapmachine.io/alpine/sapmachine-apk.rsa.pub &&     echo "4444e47cabf35695f9406692848de191d3b7cbd47dcdc1ffb62f4f70aea06e89 /etc/apk/keys/sapmachine-apk.rsa.pub" | sha256sum -c - &&     echo "https://dist.sapmachine.io/alpine" >> /etc/apk/repositories &&     apk add sapmachine-25-jre=25.0.4-r0 # buildkit
# Wed, 22 Jul 2026 18:24:07 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-25-sapmachine-jre
# Wed, 22 Jul 2026 18:24:07 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:e6f31ffc071e5560b82a8685fba8214954e5721e3e49269d00958316edbe89fe`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.8 MB (3844421 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:392b20f24fed0c35005bbf42663b5252d708af2c7fada6cb263c3e32d76d64f7`  
		Last Modified: Wed, 22 Jul 2026 18:24:20 GMT  
		Size: 60.3 MB (60307757 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:25-jre-alpine-3.23` - unknown; unknown

```console
$ docker pull sapmachine@sha256:b69fc615d3ee9f1b687d2e813082b3f7f97731f43b1ad7f177bcb4d9bcf71d72
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **442.0 KB (442036 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b8ee964037c85cc3b79e4e008a0b4d5938921e1981157b0d251f74149e20acf1`

```dockerfile
```

-	Layers:
	-	`sha256:9be14f4e6bbd9c6cdea27eb778707e4ff528c13a23c91cb825165cf1c0c2505e`  
		Last Modified: Wed, 22 Jul 2026 18:24:18 GMT  
		Size: 433.8 KB (433777 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5ade6f534c7406eefb1c9dfea61847ee43e2a3b073c61d858f2d2da5f46003b8`  
		Last Modified: Wed, 22 Jul 2026 18:24:18 GMT  
		Size: 8.3 KB (8259 bytes)  
		MIME: application/vnd.in-toto+json
