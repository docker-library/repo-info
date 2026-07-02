## `clojure:temurin-26-tools-deps-trixie`

```console
$ docker pull clojure@sha256:9cdf10dccf03752ab4bb2ad5e78a6d7ac0741a6de21f995b358f248a3b8afbfa
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 8
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `clojure:temurin-26-tools-deps-trixie` - linux; amd64

```console
$ docker pull clojure@sha256:d6f769f87d4abde10f33979b53f2c9fc03cbc182e4704b7f54270d3590703417
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **226.4 MB (226363262 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:46206da97f06bb8734c772362971031e5421d4c3559bf54228fa51176fb1f0ca`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1782172800'
# Thu, 02 Jul 2026 05:57:39 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 05:57:39 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 05:57:39 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:57:39 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Thu, 02 Jul 2026 05:57:39 GMT
WORKDIR /tmp
# Thu, 02 Jul 2026 05:57:54 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 02 Jul 2026 05:57:54 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 02 Jul 2026 05:57:54 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 02 Jul 2026 05:57:54 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 02 Jul 2026 05:57:54 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:aa3e9ef32f73c30e8b065800ee66429992d3bfea6a1fb8224afdd878ab5b994f`  
		Last Modified: Wed, 24 Jun 2026 00:28:33 GMT  
		Size: 49.3 MB (49317255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f7ffb460543a3e2d92a94052864562f5372d46088bc70bc4ba2437e4422b11bd`  
		Last Modified: Thu, 02 Jul 2026 05:58:17 GMT  
		Size: 94.5 MB (94524296 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4e74f7fe5cc801b1e5d73464a8c845f89926582ce9e66be4b6f7ab8ed6a69d8`  
		Last Modified: Thu, 02 Jul 2026 05:58:16 GMT  
		Size: 82.5 MB (82520668 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e0513bc532f97cd8170d6f4cd6d7d06caf6aae8cab9ee1521221a94a8f091dc3`  
		Last Modified: Thu, 02 Jul 2026 05:58:13 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f466bbc453e61c280c60548a0abf99293bbfef24e0ba6a8f8f4abe533ffc94da`  
		Last Modified: Thu, 02 Jul 2026 05:58:13 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-tools-deps-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:9059142cc4468aaffa787922fcdc172ecdcf679c3c4e3f89a083171bcd028ea1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7449599 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5114e8de18d4c9f3ea131e9ae47775966ecc0b252563136e51b7d6a914753de6`

```dockerfile
```

-	Layers:
	-	`sha256:be3c7801caa30f744c48e15a106f930ad493465e8303b6267aaec23809845be9`  
		Last Modified: Thu, 02 Jul 2026 05:58:13 GMT  
		Size: 7.4 MB (7433698 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1196858c6bd23e55eae6b327c91bbfbba77e1ff42a5a480970ceba420a5ae3c1`  
		Last Modified: Thu, 02 Jul 2026 05:58:13 GMT  
		Size: 15.9 KB (15901 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-tools-deps-trixie` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:15b4717384ddaf8e9dc9196d4842cba0d14182ff428c0c9dd6ce507bf060ddd3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **225.5 MB (225522524 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f185e01e4b5fb670ac9bb3b68c84c56176b36b0ad5d24503be7d04aa30355fd`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1782172800'
# Thu, 02 Jul 2026 05:58:10 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 05:58:10 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 05:58:10 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:58:10 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Thu, 02 Jul 2026 05:58:10 GMT
WORKDIR /tmp
# Thu, 02 Jul 2026 05:58:27 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 02 Jul 2026 05:58:27 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 02 Jul 2026 05:58:27 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 02 Jul 2026 05:58:27 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 02 Jul 2026 05:58:27 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:c8a311258fd162f6aa0db134045a19154c81a2244ff9ed7620256c95ae5d6b69`  
		Last Modified: Wed, 24 Jun 2026 00:28:21 GMT  
		Size: 49.7 MB (49678395 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ab6aaf259bb0856c3092dea1dd04e63433f10b4bb405cc8ef34e2cbba5f76df`  
		Last Modified: Thu, 02 Jul 2026 05:58:52 GMT  
		Size: 93.5 MB (93504374 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:142f860135c2b80eb927ca451be31f1342936d8a9e1ff05fe538e0fd74c34272`  
		Last Modified: Thu, 02 Jul 2026 05:58:51 GMT  
		Size: 82.3 MB (82338709 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9148e78be8076437e15b6b19f7cf50255058d09b8f4cb81d5da962312ffcfbf2`  
		Last Modified: Thu, 02 Jul 2026 05:58:48 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aed6e9a5cc6428976b8dec4821859ddf722a8b257bdc2ba0ce86d38834985523`  
		Last Modified: Thu, 02 Jul 2026 05:58:48 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-tools-deps-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:a8a9df153ec63f002b40538a714e9494928278a3f2c5a4d7187d62ecf8129973
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7456107 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc52347c92d027da42bb83ee45a57f0f2e628a5092c8d66e546a113ad60724d8`

```dockerfile
```

-	Layers:
	-	`sha256:76f4dde2f6ba8e4822f553b9a5276543306c25fb4ba846722faa36536c687112`  
		Last Modified: Thu, 02 Jul 2026 05:58:48 GMT  
		Size: 7.4 MB (7440088 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ed005208dd2c0b3e520bb4fbe2c4faacf5108fab32ef9120112680128d880111`  
		Last Modified: Thu, 02 Jul 2026 05:58:48 GMT  
		Size: 16.0 KB (16019 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-tools-deps-trixie` - linux; ppc64le

```console
$ docker pull clojure@sha256:10799f61ad39b415e6077a45f60168c9a23a96e240c1935ce105ec97d7beab32
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **235.0 MB (234980132 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:45748dd6a03a28f1913bf084ed61bb8bbe5f7518ba6d614675d74e5e34b78586`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1782172800'
# Thu, 02 Jul 2026 07:50:19 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 07:50:19 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 07:50:19 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 07:50:19 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Thu, 02 Jul 2026 07:50:19 GMT
WORKDIR /tmp
# Thu, 02 Jul 2026 07:58:35 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 02 Jul 2026 07:58:35 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 02 Jul 2026 07:58:35 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 02 Jul 2026 07:58:35 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 02 Jul 2026 07:58:35 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:99b7058514c1f9221ac3b0625d731341802c32d464fd604a099ae71d3765bbfd`  
		Last Modified: Wed, 24 Jun 2026 00:30:31 GMT  
		Size: 53.1 MB (53138069 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0af719890b0c1bc39d2fb63bc71bb8aa0f3a417332e4b35811081461dfa5f5e`  
		Last Modified: Thu, 02 Jul 2026 07:54:14 GMT  
		Size: 93.9 MB (93902045 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a81c68c8dfed481bb34c8911900880d0a57e6302788b97abbbc6a3b546b71251`  
		Last Modified: Thu, 02 Jul 2026 07:59:16 GMT  
		Size: 87.9 MB (87938971 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4c89fc73c01f1eb02381b6555a8260e8e8760f7253e4121ec19f46f629a98ac`  
		Last Modified: Thu, 02 Jul 2026 07:59:13 GMT  
		Size: 616.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f56389403933f476554ca0787222340ad8c19c6427354cc52a1c76d5d72f7362`  
		Last Modified: Thu, 02 Jul 2026 07:59:10 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-tools-deps-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:ca05b5345b024c1170d7dc73508944dd3418709d24738a89280e62c1435dac04
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7438004 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dbe5078aed927e312e72144344241df0ad1433a014b217307cc266d6300bcd30`

```dockerfile
```

-	Layers:
	-	`sha256:043dc58498a9caed44aff5e96bbf7ba8f6f4d4ce21f045dd15c565679c100680`  
		Last Modified: Thu, 02 Jul 2026 07:59:13 GMT  
		Size: 7.4 MB (7422055 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0cdcc976a22b38bf60b7bec684d559b39f32c40c7e4531cd023255940bfc4077`  
		Last Modified: Thu, 02 Jul 2026 07:59:12 GMT  
		Size: 15.9 KB (15949 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-tools-deps-trixie` - linux; s390x

```console
$ docker pull clojure@sha256:7831ef8dc9c35fd0139b1237fcf8cd751c63050870dacb6e916e65ebf2eadf51
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **223.4 MB (223427044 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bcec3ef52c6d98b36dbc5b9b688e2a2e204d759105fbc073cb5db317a4a25d39`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1782172800'
# Thu, 02 Jul 2026 05:59:57 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 05:59:57 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 05:59:57 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:59:57 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Thu, 02 Jul 2026 05:59:57 GMT
WORKDIR /tmp
# Thu, 02 Jul 2026 06:02:03 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 02 Jul 2026 06:02:03 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 02 Jul 2026 06:02:03 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 02 Jul 2026 06:02:03 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 02 Jul 2026 06:02:03 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:4acbf08d84aa74ba1f41a222ae6a061c228f6ba4fc5d1d428650c7427ca1fbd3`  
		Last Modified: Wed, 24 Jun 2026 00:28:42 GMT  
		Size: 49.4 MB (49386060 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26927b3f7f3553ad8ab95551985a016e4d30efb84fd142f0f9e7c894c3608e61`  
		Last Modified: Thu, 02 Jul 2026 06:01:31 GMT  
		Size: 90.5 MB (90536927 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7fd59957393a01b0de3a915e50e2ce6fa965990ec51ded373cf32a29f5c355c`  
		Last Modified: Thu, 02 Jul 2026 06:02:28 GMT  
		Size: 83.5 MB (83503017 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f6f80af9ef9181bb49ca0f2442490abd7be0a7973dbe97c5da95272a6c73f0dd`  
		Last Modified: Thu, 02 Jul 2026 06:02:26 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a837d4c1fc44498fca36b122482601b54b6e3284204a9350658532f68ed7e707`  
		Last Modified: Thu, 02 Jul 2026 06:02:26 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-tools-deps-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:f491647f5d8ce20a40b6d82728759647fff67fb318cd807878203f7dd9bd92e5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7430707 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2807b33f241e53d7d525fb65618eb44a955fd39aadc192180b4f6d1b95a2e9b9`

```dockerfile
```

-	Layers:
	-	`sha256:f059488a960099eb8711bd877cb9f881f2d0f97d4efcab0df8694766fdf18a4b`  
		Last Modified: Thu, 02 Jul 2026 06:02:27 GMT  
		Size: 7.4 MB (7414806 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d61152c8dbfeb26f6620e4661f1400c3dc3827a056549b9aabe71c1926be3e08`  
		Last Modified: Thu, 02 Jul 2026 06:02:27 GMT  
		Size: 15.9 KB (15901 bytes)  
		MIME: application/vnd.in-toto+json
