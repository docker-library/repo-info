## `clojure:temurin-25-tools-deps-trixie`

```console
$ docker pull clojure@sha256:61e9da62f16eab96099151b37783715dec96640999837713d71c36af87887a18
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-25-tools-deps-trixie` - linux; amd64

```console
$ docker pull clojure@sha256:4010279d39cae0592bb1296794c19cd3ad924066579b0403b4b120bce91a205a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **228.0 MB (228024498 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2d3a3108a91bc9f241b53603c6b200d81f7fa455bf4d631789be726f5fba7fd7`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1787529600'
# Fri, 04 Sep 2026 00:04:00 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 04 Sep 2026 00:04:00 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 04 Sep 2026 00:04:00 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 04 Sep 2026 00:04:00 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Fri, 04 Sep 2026 00:04:00 GMT
WORKDIR /tmp
# Fri, 04 Sep 2026 00:04:17 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 04 Sep 2026 00:04:17 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 04 Sep 2026 00:04:17 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 04 Sep 2026 00:04:17 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 04 Sep 2026 00:04:17 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:27ee9a8250487842a26b1ffa1215982ba9ae27010bce1997d52f9f8628578d17`  
		Last Modified: Mon, 24 Aug 2026 23:20:56 GMT  
		Size: 49.3 MB (49337828 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:589fde5c10ad13ba77d35a14152557a56133e7fff62bf666662a0699b0fb198d`  
		Last Modified: Fri, 04 Sep 2026 00:04:40 GMT  
		Size: 92.6 MB (92615119 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b9c11478979387288f23b8230d514b75cbb309faa855932b91cea2ae8bc941e`  
		Last Modified: Fri, 04 Sep 2026 00:04:40 GMT  
		Size: 86.1 MB (86070508 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13d49d39b508ee43496fdcdb92ca720dd3014311fc65d05cea4232b83f437305`  
		Last Modified: Fri, 04 Sep 2026 00:04:36 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51a9f0639b0064438436e7cb75141dabca2237d8c47e2768b4273a6110ed6e6a`  
		Last Modified: Fri, 04 Sep 2026 00:04:36 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-tools-deps-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:d59b33aa7ab9c4d93a1ddbf40aad2daf2d12b051a0e863619c0af73e37469dd1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7458502 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8cce8a61e017a5a60fde37bf2d68b027f65d85aa91eb6528035c5989774be2d5`

```dockerfile
```

-	Layers:
	-	`sha256:96761866dd1520783aa3ed91b7c2d6bf7d264ff91772d0cc81bf06ae92a95348`  
		Last Modified: Fri, 04 Sep 2026 00:04:37 GMT  
		Size: 7.4 MB (7441933 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d05d93f61875875aac36095b66bfe93692bf807084592bd7f60f515a19ac59df`  
		Last Modified: Fri, 04 Sep 2026 00:04:36 GMT  
		Size: 16.6 KB (16569 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-tools-deps-trixie` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:5c233af7af1d191b3adbc96f28e4cda147495c116946ea13f7cedd0894c18d5b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **227.5 MB (227505556 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:95cf27416a77b94a0489ac43a0fecf6922b24d7453221edc9ac8f87b27d0507f`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1787529600'
# Fri, 04 Sep 2026 00:08:07 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 04 Sep 2026 00:08:07 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 04 Sep 2026 00:08:07 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 04 Sep 2026 00:08:07 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Fri, 04 Sep 2026 00:08:07 GMT
WORKDIR /tmp
# Fri, 04 Sep 2026 00:08:26 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 04 Sep 2026 00:08:26 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 04 Sep 2026 00:08:26 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 04 Sep 2026 00:08:26 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 04 Sep 2026 00:08:26 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:7f50a08a25277c02b8dfc99818a21e12083215981e0aa03cb07cb74c9116f205`  
		Last Modified: Mon, 24 Aug 2026 23:20:48 GMT  
		Size: 49.7 MB (49704853 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c2d3156a40cc578ec7d0488ad3d1b52c083de01237fcbd3c667525f7f1ec674`  
		Last Modified: Fri, 04 Sep 2026 00:08:45 GMT  
		Size: 91.5 MB (91532202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:14358a9183406e036929cb07240e90f45beae682d67b9db5576330851df24d94`  
		Last Modified: Fri, 04 Sep 2026 00:08:48 GMT  
		Size: 86.3 MB (86267457 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43ee87b9ad68cf67217b6365c8422d24e7708e4082033108991f5f014c9b0839`  
		Last Modified: Fri, 04 Sep 2026 00:08:45 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1db5431236960dfd0826ed1565cf05a3a1f6ccff7c022c194b885c176fe4a2ba`  
		Last Modified: Fri, 04 Sep 2026 00:08:45 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-tools-deps-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:f9dca74b2844ec9b7052ac565af55feba09e8f2782fac9ed085d6a3280fff438
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7465057 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:18a628120116557142a9ead65ec5723fa339dfc5f8ac257d72ca112a5f3042b4`

```dockerfile
```

-	Layers:
	-	`sha256:b9693e131b6f4e8cf54f5754a93a784a6e0858b733e4b57d5e7447a50e35e965`  
		Last Modified: Fri, 04 Sep 2026 00:08:45 GMT  
		Size: 7.4 MB (7448347 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c9f339cb042ccd1250f735bf37cf23e32d36a8c7c79d980e3cce28fbf7497c74`  
		Last Modified: Fri, 04 Sep 2026 00:08:44 GMT  
		Size: 16.7 KB (16710 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-tools-deps-trixie` - linux; ppc64le

```console
$ docker pull clojure@sha256:6da966a54938563bd238f0ccf16f9e8403eaaf0530afb75322734274acaa6ccf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **236.1 MB (236137863 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c6ab5d81215843b05f5225ac7ba48d2a85bd77b8d7b067ed3a4f2ef9574a1fe`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1787529600'
# Fri, 04 Sep 2026 00:28:24 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 04 Sep 2026 00:28:24 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 04 Sep 2026 00:28:24 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 04 Sep 2026 00:28:24 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Fri, 04 Sep 2026 00:28:25 GMT
WORKDIR /tmp
# Fri, 04 Sep 2026 00:29:15 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 04 Sep 2026 00:29:15 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 04 Sep 2026 00:29:15 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 04 Sep 2026 00:29:15 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 04 Sep 2026 00:29:15 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:9e8ba95bc0f758aeefc6ee2893238edfdc36acd4c619b64346a7e620439fd6d7`  
		Last Modified: Mon, 24 Aug 2026 23:22:19 GMT  
		Size: 53.2 MB (53164283 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f042512cdeeb3671805656526c674d63e4666ca8945ffdb37a0a08d4079e481`  
		Last Modified: Fri, 04 Sep 2026 00:30:08 GMT  
		Size: 91.3 MB (91255831 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1350bb3e20a6eebbcb50bc6e7db5f6555266da2bdebc038d0b390d8332fca1a9`  
		Last Modified: Fri, 04 Sep 2026 00:30:08 GMT  
		Size: 91.7 MB (91716706 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:983fe8f9b61e9a91d68834cb44983fcc62c76a6e35cbb6f5e88f520e020a7df7`  
		Last Modified: Fri, 04 Sep 2026 00:30:04 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06379cc879a2aeb59f40fdb55741a089df2ce22bf05064b509a6400540913c8d`  
		Last Modified: Fri, 04 Sep 2026 00:30:04 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-tools-deps-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:1a1223ebd1023887a1b634dc297d58f17fb33c8eab40edcdd61e8415402e6ade
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7446306 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3d037e22fd1b44b5174de3832ff5ff3e78c960eb05fa175fd477e64e6d56dce2`

```dockerfile
```

-	Layers:
	-	`sha256:76621536d75ee96c0aaf82c589029406ed563151553e6562ff4ece6b3db005e2`  
		Last Modified: Fri, 04 Sep 2026 00:30:04 GMT  
		Size: 7.4 MB (7429678 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9ef0d4efb79e4e0cc4553c95bedd10e06845b61afe7437c33e74bdd8b0eb9232`  
		Last Modified: Fri, 04 Sep 2026 00:30:03 GMT  
		Size: 16.6 KB (16628 bytes)  
		MIME: application/vnd.in-toto+json
