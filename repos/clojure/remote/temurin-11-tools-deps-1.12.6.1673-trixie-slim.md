## `clojure:temurin-11-tools-deps-1.12.6.1673-trixie-slim`

```console
$ docker pull clojure@sha256:e0cdd3848e42b3182cc1b6729b0d60b0bbcacf6fcf88c2a79ecc22601cb8f476
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-11-tools-deps-1.12.6.1673-trixie-slim` - linux; amd64

```console
$ docker pull clojure@sha256:a4c19fafef9d7fb2062831c271dcabc7feea0205c6897be471972c1a0fb607bd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **247.6 MB (247582336 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8f3a40eb45de28e5d2ef0ee51ed6e7f2ff818dfd3a8d797ff72aaf0a7b7078f4`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1787529600'
# Wed, 09 Sep 2026 03:46:11 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 09 Sep 2026 03:46:11 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 09 Sep 2026 03:46:11 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 09 Sep 2026 03:46:11 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 09 Sep 2026 03:46:11 GMT
WORKDIR /tmp
# Wed, 09 Sep 2026 03:46:29 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 09 Sep 2026 03:46:29 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 09 Sep 2026 03:46:29 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:6310eb16bf4251731feab01e8f633bf5e2d75a657ccad97f420b1f83cce457be`  
		Last Modified: Mon, 24 Aug 2026 23:20:57 GMT  
		Size: 29.8 MB (29792658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f62278e552a7d28787f8a453e504d3e8fd1de27c764f95ae8fa5f9d4bceec65`  
		Last Modified: Wed, 09 Sep 2026 03:46:53 GMT  
		Size: 145.9 MB (145861443 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5f354c26563ed344df147448d291cc54dc468e60dfa47eab71c4f25c1b86d57`  
		Last Modified: Wed, 09 Sep 2026 03:46:51 GMT  
		Size: 71.9 MB (71927590 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fca8ed5dbd8c2f1ba088168a096db69fb5fc75d05eb10a990b1c2bab61847e83`  
		Last Modified: Wed, 09 Sep 2026 03:46:48 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-tools-deps-1.12.6.1673-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:33d3c4257541170491ac97f169d04bac1f864498d22242bfbed6f50a8075e2d5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5291473 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:413e0dba98dda9ccc719f9612617aa74e12d305252f59304a865c96f26bd4995`

```dockerfile
```

-	Layers:
	-	`sha256:59bf43e8a65915e53240ce9a0dcd3d533d76dba7c38705e0454ac40e6860f982`  
		Last Modified: Wed, 09 Sep 2026 03:46:48 GMT  
		Size: 5.3 MB (5277076 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:726ebefa5fb2b8f452c4ca1a4b6622d893e2a85b91da330703de018695d51d34`  
		Last Modified: Wed, 09 Sep 2026 03:46:48 GMT  
		Size: 14.4 KB (14397 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-tools-deps-1.12.6.1673-trixie-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:d7b2917e7b86ddc1eca233f7e83e612b7b2122228dd9c072b4a57e546f2cd07d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **244.9 MB (244856371 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:77d79ee8b6884fbae0bf73b7e56cbf7764524365330f5c80b540d8899da9d265`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1787529600'
# Wed, 09 Sep 2026 03:57:26 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 09 Sep 2026 03:57:26 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 09 Sep 2026 03:57:26 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 09 Sep 2026 03:57:26 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 09 Sep 2026 03:57:26 GMT
WORKDIR /tmp
# Wed, 09 Sep 2026 03:57:43 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 09 Sep 2026 03:57:43 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 09 Sep 2026 03:57:43 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:bf7af0229701decd1b9f42143504fc8f69e5664c37e57001d198e731e4f86c2e`  
		Last Modified: Mon, 24 Aug 2026 23:20:48 GMT  
		Size: 30.2 MB (30159582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89076ca7387bb3e2020a82614bed4fa045a598bb381aab7f6311e6e06f48f87e`  
		Last Modified: Wed, 09 Sep 2026 03:58:07 GMT  
		Size: 142.6 MB (142566230 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36035753452319e47740978243ae238d7058b93cadab34182c72ebb0e216d89f`  
		Last Modified: Wed, 09 Sep 2026 03:58:05 GMT  
		Size: 72.1 MB (72129913 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bad0b8549f5b5fb8eb0b2d9215a31eb4824b3761580fcf2643463e3ca2ed12f0`  
		Last Modified: Wed, 09 Sep 2026 03:58:02 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-tools-deps-1.12.6.1673-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:c8fa7d7b0016176a28de3842711f78b36723304af09edb7286194a48347754b4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5297970 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:50e1f93cdd1db6453b8c08ebc99c0e4fe541d77a3a84ec6c89419d8873c4a7a2`

```dockerfile
```

-	Layers:
	-	`sha256:7a7d257c8f0a836e4121e7ee5f64fe507ffa8e4ef39dd69f9163196876803c67`  
		Last Modified: Wed, 09 Sep 2026 03:58:02 GMT  
		Size: 5.3 MB (5283455 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2302ecb2f1de7a0bb6a71ba1cb6b3dc238bf0651afa7fd0403315e348b70136d`  
		Last Modified: Wed, 09 Sep 2026 03:58:02 GMT  
		Size: 14.5 KB (14515 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-tools-deps-1.12.6.1673-trixie-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:62d7b930aedc3ad9dd2313785004f179834a28efa02f685c2a43d65ca35e743b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **244.3 MB (244281085 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f7d0cbcb2c056a01a2cd9c3b3e1f030f991038825746053a13644c8cab80e96`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1787529600'
# Wed, 09 Sep 2026 10:39:07 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 09 Sep 2026 10:39:07 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 09 Sep 2026 10:39:07 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 09 Sep 2026 10:39:07 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 09 Sep 2026 10:39:08 GMT
WORKDIR /tmp
# Wed, 09 Sep 2026 10:44:21 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 09 Sep 2026 10:44:21 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 09 Sep 2026 10:44:21 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:2b3dfadc0808f798cf371605ccaac4ef505f4812ae4087e8fef3c0d0fa4498a7`  
		Last Modified: Mon, 24 Aug 2026 23:22:18 GMT  
		Size: 33.6 MB (33615461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:748acee124d17029ddea4ad8592dca64d1e0976c49b98dc9c4bfe44b670d57bb`  
		Last Modified: Wed, 09 Sep 2026 10:43:06 GMT  
		Size: 133.1 MB (133089500 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e11aa0609a65c73ba3a820145b30fcc33f5a36a266eb84d8b9bf2dae141add5`  
		Last Modified: Wed, 09 Sep 2026 10:45:09 GMT  
		Size: 77.6 MB (77575480 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92cdd9844e4855df6339bd8ae6a044101cf9927ebb23a600d17bcfffb759db97`  
		Last Modified: Wed, 09 Sep 2026 10:45:07 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-tools-deps-1.12.6.1673-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:375c0b69ca4a116d9b1d872a0793359afe6ce71422348c944176dbc89692bc4e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5295277 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:abe905e49fd13c49c49f523353f4c0e8fba3d252140ef42e8e2b8b0cc3b06ea7`

```dockerfile
```

-	Layers:
	-	`sha256:5c9c7d83c3c078a261e3fde24844901160b87888e2c190182afa757c8edcbecd`  
		Last Modified: Wed, 09 Sep 2026 10:45:07 GMT  
		Size: 5.3 MB (5280832 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e9643992b625a5ca05762864a7ea62179b44479eaf9157407a72bdd744440542`  
		Last Modified: Wed, 09 Sep 2026 10:45:07 GMT  
		Size: 14.4 KB (14445 bytes)  
		MIME: application/vnd.in-toto+json
