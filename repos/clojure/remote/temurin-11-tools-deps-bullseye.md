## `clojure:temurin-11-tools-deps-bullseye`

```console
$ docker pull clojure@sha256:7979c7a97df0807b6c66d86a50327e10f938f4e63d4cbdf78ac109795ec6abca
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clojure:temurin-11-tools-deps-bullseye` - linux; amd64

```console
$ docker pull clojure@sha256:052f741997a4ed2c4337ff88f6b926726a59bc97130661d1c11368c688cbd961
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.2 MB (266172661 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b42bd7c962f3518c50cd70327ee63db3c2dfe783017e57aa96c5447c29676708`
-	Default Command: `["clj"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bullseye' '@1782172800'
# Thu, 02 Jul 2026 05:49:26 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 05:49:26 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 05:49:26 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:49:26 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Thu, 02 Jul 2026 05:49:26 GMT
WORKDIR /tmp
# Thu, 02 Jul 2026 05:49:38 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 02 Jul 2026 05:49:38 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 02 Jul 2026 05:49:38 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:c67cddb4b9fcdeefaf829aa012f0ccaefcfa862a558064326104b95b8849cd81`  
		Last Modified: Wed, 24 Jun 2026 00:28:17 GMT  
		Size: 53.8 MB (53773009 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:94a53a8dccef22cd4f9d58c3c0730bf69af07bfb39700a5e6d02d10fabe026d4`  
		Last Modified: Thu, 02 Jul 2026 05:50:00 GMT  
		Size: 145.9 MB (145886200 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5bf4df4702d71f58cf020a72dae577d85df796555881a80eafac74b0939c6c7a`  
		Last Modified: Thu, 02 Jul 2026 05:49:58 GMT  
		Size: 66.5 MB (66512806 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:787279bb050f6ca9d62fadfb1d52c6856ce78b4fd82cdfa89be98e58e6fec53b`  
		Last Modified: Thu, 02 Jul 2026 05:49:55 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-tools-deps-bullseye` - unknown; unknown

```console
$ docker pull clojure@sha256:25dbd68c11c937ced3b944322ec35a9bcb0f774004b37f3c5b435ebc1a075353
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7439328 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:064c75fb273ff3f14a981630d1d8b6cdfbeba511f809f98126f38c8ab051ac95`

```dockerfile
```

-	Layers:
	-	`sha256:6cbf62cf044c626f0a161c387b179381c046825d087160f757d0e06773a0bd49`  
		Last Modified: Thu, 02 Jul 2026 05:49:56 GMT  
		Size: 7.4 MB (7424965 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c428e74a0c839afa1329a46aaf30cfc5892c29fb4b76a2362d37f461d72683bf`  
		Last Modified: Thu, 02 Jul 2026 05:49:55 GMT  
		Size: 14.4 KB (14363 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-tools-deps-bullseye` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:8187bdb6b31726585ac57df7c838f6ef267ab1acd6e9d1ebdd3b95ce7d1ab2dd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **261.5 MB (261518165 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f7eb21a433c13b30e6a6abe4ecc186eefcbdb991555652700978f7ef30c4def`
-	Default Command: `["clj"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bullseye' '@1782172800'
# Thu, 02 Jul 2026 05:49:52 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 05:49:52 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 05:49:52 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:49:52 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Thu, 02 Jul 2026 05:49:52 GMT
WORKDIR /tmp
# Thu, 02 Jul 2026 05:50:06 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 02 Jul 2026 05:50:06 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 02 Jul 2026 05:50:06 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:35157acdff35db21da73141f382d0dca0f6bc6d183c3a816d283fe39f471e539`  
		Last Modified: Wed, 24 Jun 2026 00:27:56 GMT  
		Size: 52.3 MB (52257219 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:770f1764f5819046cdb96384cd32cf897bfcb0e8d4328a180ddde32db3c7c5b1`  
		Last Modified: Thu, 02 Jul 2026 05:50:30 GMT  
		Size: 142.6 MB (142582194 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4bc407a7c35c6d2a200498e3141b03ff354330d4b77e15f35762e956ede1536`  
		Last Modified: Thu, 02 Jul 2026 05:50:29 GMT  
		Size: 66.7 MB (66678104 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e8a3968b4fa2e464bb6e0e1cb00d4d0745f8657e6ab3b4c6d997085e872aa56`  
		Last Modified: Thu, 02 Jul 2026 05:50:25 GMT  
		Size: 616.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-tools-deps-bullseye` - unknown; unknown

```console
$ docker pull clojure@sha256:12405acb7d4cd40fddd337703d0218ea0ccf4bb2b24094d63d90939b6f21e0b7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7445163 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd669f59b98834571a9c727db2dbd123853a706e296c471c1d7e410d2c2104ac`

```dockerfile
```

-	Layers:
	-	`sha256:63d9ce93ad7934f39d1f9763c2edef6316b48f24b34c62d4709d29a79ed40b57`  
		Last Modified: Thu, 02 Jul 2026 05:50:26 GMT  
		Size: 7.4 MB (7430682 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3ca45d8b75829c89c05261ea5c73f60877c9cee4f375a5e7726b069d84da9dd6`  
		Last Modified: Thu, 02 Jul 2026 05:50:25 GMT  
		Size: 14.5 KB (14481 bytes)  
		MIME: application/vnd.in-toto+json
