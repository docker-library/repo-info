## `clojure:temurin-21-trixie`

```console
$ docker pull clojure@sha256:b727cadddd3819d9f4ce7ba089c4e49255322c825dd3ad47c96807623388f480
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-21-trixie` - linux; amd64

```console
$ docker pull clojure@sha256:20f006ccc1d3771a37adc7c780fed37a3011013559ef91793bcb155063f1051b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **290.4 MB (290392716 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1018ed8e33fcff7bc632b5c15fc7e62eb5d3747ea6a083ad00d4e30b733c9626`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793827419'
# Thu, 12 Nov 2026 00:50:28 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 12 Nov 2026 00:50:28 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 12 Nov 2026 00:50:28 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 12 Nov 2026 00:50:28 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Thu, 12 Nov 2026 00:50:28 GMT
WORKDIR /tmp
# Thu, 12 Nov 2026 00:50:44 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 12 Nov 2026 00:50:44 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 12 Nov 2026 00:50:44 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 12 Nov 2026 00:50:44 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 12 Nov 2026 00:50:44 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:a6dd1c05fbba4f9028078a11f143cbb625d2408921eb8207bfa1dd1ad301276f`  
		Last Modified: Thu, 05 Nov 2026 06:16:21 GMT  
		Size: 49.4 MB (49412508 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26b7e3768f4f5d23e951908bd0752ca84fb38366ad7237b05c6c343fba4f0aa4`  
		Last Modified: Thu, 12 Nov 2026 00:51:05 GMT  
		Size: 158.4 MB (158409388 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ccdda52a6ddccb7810190989cecb676610ea80f708bad0ca1deb0d029fc02f3b`  
		Last Modified: Thu, 12 Nov 2026 00:51:08 GMT  
		Size: 82.6 MB (82569273 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c2d64849e4be7614c00b3e4b121756cd7d1458714757619af0c4f89df8b5e89e`  
		Last Modified: Thu, 12 Nov 2026 00:51:01 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce8e52fa267c7bea46ca9e2adbd10b100cd83002d12eb2093b14968d90b99893`  
		Last Modified: Thu, 12 Nov 2026 00:51:00 GMT  
		Size: 900.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:6186d2c2cd6b2d5f2e089362da84f8e623bc6749cf2fbb2b63c930cc0cc58bfb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7494518 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:61810b6c801854d5ea5a62a3df0674e74ab43090d50ad259df6c4972158ef1e1`

```dockerfile
```

-	Layers:
	-	`sha256:54254ab719adcecbee7a0a79ca715a5ac04537f1ae0dda9b2047dad1244fdb28`  
		Last Modified: Thu, 12 Nov 2026 00:51:05 GMT  
		Size: 7.5 MB (7478611 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a101ab9d105318aad71e0568f48111e9cf54be06b14ba263dbb2dbd11d935e4e`  
		Last Modified: Thu, 12 Nov 2026 00:51:04 GMT  
		Size: 15.9 KB (15907 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-trixie` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:ed8303b717a4a6675e9d5836727961da299f9c9551b9ce0bf5fcf7a48ae13ec1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **288.9 MB (288864421 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:67d9452c38e3d389e1fe37b2fca22b2ab31bd9de04c141ae04840ebbbd870d58`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Thu, 12 Nov 2026 01:05:48 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 12 Nov 2026 01:05:48 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 12 Nov 2026 01:05:48 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 12 Nov 2026 01:05:48 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Thu, 12 Nov 2026 01:05:48 GMT
WORKDIR /tmp
# Thu, 12 Nov 2026 01:06:05 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 12 Nov 2026 01:06:06 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 12 Nov 2026 01:06:06 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 12 Nov 2026 01:06:06 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 12 Nov 2026 01:06:06 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:23b69c48ce5c2a6fb0681d959fa700427ad2a7cf7e6be5d25249170a1853d7ad`  
		Last Modified: Thu, 05 Nov 2026 06:16:05 GMT  
		Size: 49.8 MB (49778604 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cecd627c0a54fa338b23aad11422260ec4ffede7460ac8632266fdfa5a0b2c18`  
		Last Modified: Thu, 12 Nov 2026 01:06:33 GMT  
		Size: 156.7 MB (156691653 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9bc98727c3f994ab849dbf580692fff0bb0eeedb16c719a2a337872078d6bcd6`  
		Last Modified: Thu, 12 Nov 2026 01:06:31 GMT  
		Size: 82.4 MB (82392619 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d72d2ae3ff968007149f1572fc46feb3e89a4d3863e8bed0cf5d3bce19667df8`  
		Last Modified: Thu, 12 Nov 2026 01:06:26 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e5c9f72c42620131ef3ce1a62660ee5d106ba84720219cc9c04ff825e58dcf8`  
		Last Modified: Thu, 12 Nov 2026 01:06:26 GMT  
		Size: 898.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:ce9880ee5b954635f135e4566c34308c802be9623a1a9ec478865cf522f157eb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7501029 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e96e5f8c293262830347b8b55e12622c51f007769f9e42c35a3c2510f4c6bbf`

```dockerfile
```

-	Layers:
	-	`sha256:7e1093451427966d706e530aa2434a45627e8f4523f4989d12d3ab83634a1454`  
		Last Modified: Thu, 12 Nov 2026 01:06:26 GMT  
		Size: 7.5 MB (7485004 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ea10a1e5260e5019b7c9a0352f2ce230325d63a95bb5046cf2a4b186816de48c`  
		Last Modified: Thu, 12 Nov 2026 01:06:26 GMT  
		Size: 16.0 KB (16025 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-trixie` - linux; ppc64le

```console
$ docker pull clojure@sha256:2bcdbb6437fe1d6168e65b852381bfcf0099502daa0bd4fb9e41a6b134f3fd07
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **298.8 MB (298797342 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce63fb49a27d3c1d2f60c3a220c5c3967dbd9ab7983588592cbdf976fad52ed6`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 15:52:01 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 05 Nov 2026 15:52:01 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 05 Nov 2026 15:52:01 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 15:52:01 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Thu, 05 Nov 2026 15:52:05 GMT
WORKDIR /tmp
# Thu, 05 Nov 2026 15:59:51 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 05 Nov 2026 15:59:52 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 10 Nov 2026 02:43:35 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 10 Nov 2026 02:43:35 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 10 Nov 2026 02:43:35 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:9acf5fc430af42e0444193402206b9d2b5c2c4692602efa65ff7c784c52790c2`  
		Last Modified: Thu, 05 Nov 2026 06:18:00 GMT  
		Size: 53.2 MB (53225589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f77324a11848d877bac9af5f0ca39315d93ee1d02d9b33c1cea449a77e36efcf`  
		Last Modified: Thu, 05 Nov 2026 15:57:04 GMT  
		Size: 157.6 MB (157573237 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e6cff48775a8e3fcdf7bcdfc3fb231681142445b73204c9aec35e96d4d13a37`  
		Last Modified: Thu, 05 Nov 2026 16:00:58 GMT  
		Size: 88.0 MB (87996967 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d246f8a5b1b96c015a239210d4f7b644379516fa846a759c6006ad86848bd5ca`  
		Last Modified: Thu, 05 Nov 2026 16:00:57 GMT  
		Size: 617.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c79d8423b6ecb1d22cb69f00781ac7563bfce743f400a9ab661b70ed180275bb`  
		Last Modified: Tue, 10 Nov 2026 02:44:09 GMT  
		Size: 900.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:96a7ee82020ff516a0b70c5f36a89299fe52ebb946a39b1ab789a398c9d3fbbd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7496783 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:adde2a19cc29a84abf82a2decc88e970c2e231662101d99218a1bcdcf8a667da`

```dockerfile
```

-	Layers:
	-	`sha256:ac64d8b5bb903cff60ab85477d47003f25e1febaea96dca156d902742c282319`  
		Last Modified: Tue, 10 Nov 2026 02:44:10 GMT  
		Size: 7.5 MB (7481782 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e0814d50030afe28f726b942c3a174337aabf62131a60dae868430f356b77d2e`  
		Last Modified: Tue, 10 Nov 2026 02:44:09 GMT  
		Size: 15.0 KB (15001 bytes)  
		MIME: application/vnd.in-toto+json
