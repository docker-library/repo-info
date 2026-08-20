## `amazoncorretto:11-alpine3.23`

```console
$ docker pull amazoncorretto@sha256:080a8b703ed8f940a9faf75d67d9826209ea483a1a325702f8e54d114b44c40b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:11-alpine3.23` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:51b20441fc5548cd913ee3e73d43a971ab0819e6cace948c26ff870e81fdb76b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **147.8 MB (147792793 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a9f95d642066685b783234bcfd51fbbf0bd35bc22736f394616413f63dff2bfb`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:09 GMT
ADD alpine-minirootfs-3.23.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:09 GMT
CMD ["/bin/sh"]
# Thu, 23 Jul 2026 23:11:19 GMT
ARG version=11.0.32.9.1
# Thu, 23 Jul 2026 23:11:19 GMT
# ARGS: version=11.0.32.9.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-11=$version-r0 &&     rm -rf /usr/lib/jvm/java-11-amazon-corretto/lib/src.zip # buildkit
# Thu, 23 Jul 2026 23:11:19 GMT
ENV LANG=C.UTF-8
# Thu, 23 Jul 2026 23:11:19 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Thu, 23 Jul 2026 23:11:19 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:e6f31ffc071e5560b82a8685fba8214954e5721e3e49269d00958316edbe89fe`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.8 MB (3844421 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f9669392a16e5150abaa288535057236d5fce7239ccbf99fdbaa5f9b98dd902b`  
		Last Modified: Thu, 23 Jul 2026 23:11:36 GMT  
		Size: 143.9 MB (143948372 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:11-alpine3.23` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:1da3cdbdebe53a4392922b6531edb856c5980e61478026f3986916f3329f665d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **597.0 KB (597023 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:721c1e03308ddbd9bc10b78f431b85c69301eb9006fdda86e77cef90b7505a1f`

```dockerfile
```

-	Layers:
	-	`sha256:ab5e96183bdf7b2148cc3dc9e8d4991ddb8a73800a467687b96aaa99b62cc005`  
		Last Modified: Thu, 23 Jul 2026 23:11:33 GMT  
		Size: 587.6 KB (587649 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7cab8290a202b43af464b45f58f5b2f3978020cf88edeecefd4d8d854f775121`  
		Last Modified: Thu, 23 Jul 2026 23:11:33 GMT  
		Size: 9.4 KB (9374 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:11-alpine3.23` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:b973e987b244afc30e28d2e0dced849b2d32dd123d41bc1428b87dd8b9ea7e59
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **146.5 MB (146515865 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba7de935334cd4a2dac8ab4df85083010bab46765e8f2d59a936a7b2f59642ea`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:57 GMT
ADD alpine-minirootfs-3.23.5-aarch64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:57 GMT
CMD ["/bin/sh"]
# Thu, 20 Aug 2026 17:16:14 GMT
ARG version=11.0.32.10.1
# Thu, 20 Aug 2026 17:16:14 GMT
# ARGS: version=11.0.32.10.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-11=$version-r0 &&     rm -rf /usr/lib/jvm/java-11-amazon-corretto/lib/src.zip # buildkit
# Thu, 20 Aug 2026 17:16:14 GMT
ENV LANG=C.UTF-8
# Thu, 20 Aug 2026 17:16:14 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Thu, 20 Aug 2026 17:16:14 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:14a4754c352fba4c6c0da8e4f01bb990463c19f7ff63e090073c385bd2bc5046`  
		Last Modified: Mon, 22 Jun 2026 12:03:31 GMT  
		Size: 4.2 MB (4181860 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98791806e721caf2778c15589a068f3b0981e38638703951d4ad898c3165cdb8`  
		Last Modified: Thu, 20 Aug 2026 17:16:32 GMT  
		Size: 142.3 MB (142334005 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:11-alpine3.23` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:b3a1324aa11366bafa07dea0f0c60710db59c33b91803df72bc71b6b0b4cb9d2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **596.5 KB (596543 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:908d92a8435cbcaf5fb327553e9dca61355806c601df3440efcaa4f1df487abd`

```dockerfile
```

-	Layers:
	-	`sha256:ecfe227191efa3efa999e8e4e023f7b0769fb7443bef3059c27db56dcbb460d9`  
		Last Modified: Thu, 20 Aug 2026 17:16:29 GMT  
		Size: 587.1 KB (587061 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7104ab1a490fc5472e2d7ddb074e9a4148b5289307207a3eb086bf7cff2081ce`  
		Last Modified: Thu, 20 Aug 2026 17:16:29 GMT  
		Size: 9.5 KB (9482 bytes)  
		MIME: application/vnd.in-toto+json
