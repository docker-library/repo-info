## `clojure:temurin-25-trixie`

```console
$ docker pull clojure@sha256:885f402743206703a8ee828799632cb4127a6797ae6721a01330e38e05fdcff7
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-25-trixie` - linux; amd64

```console
$ docker pull clojure@sha256:8fccf80f054c61a3294bda3967b1711cb7c25ed59202407c117d6da1bb99a968
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **224.6 MB (224583365 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e04539595f0cb7db152d0a8cb4bbf501c11d0876ca835c327e1be3e0086f414`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793827419'
# Thu, 19 Nov 2026 22:08:56 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 19 Nov 2026 22:08:56 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 19 Nov 2026 22:08:56 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 19 Nov 2026 22:08:56 GMT
ENV CLOJURE_VERSION=1.12.7.1681
# Thu, 19 Nov 2026 22:08:56 GMT
WORKDIR /tmp
# Thu, 19 Nov 2026 22:09:14 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "4b0d4df753c477683c6237906e65cdaad1d30ab6283b3afe8abfbaca48e90120 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 19 Nov 2026 22:09:14 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 19 Nov 2026 22:09:14 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 19 Nov 2026 22:09:14 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 19 Nov 2026 22:09:14 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:a6dd1c05fbba4f9028078a11f143cbb625d2408921eb8207bfa1dd1ad301276f`  
		Last Modified: Thu, 05 Nov 2026 06:16:21 GMT  
		Size: 49.4 MB (49412508 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4276e8a0fed7ec9ad54647eafd82cb137cd1a180953ac6b775f63c8035ea540f`  
		Last Modified: Thu, 19 Nov 2026 22:09:36 GMT  
		Size: 92.6 MB (92598844 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85bc461c87d59d11812971c6c8cad3ae843a35377b13ccb32c4088c6b30d3ae2`  
		Last Modified: Thu, 19 Nov 2026 22:09:36 GMT  
		Size: 82.6 MB (82570466 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:edf6804b8fc3ee22e8fdafd3fbfbc307f1c6a57dde840d1f21005468357fa70c`  
		Last Modified: Thu, 19 Nov 2026 22:09:33 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ae115ef717526d3320275b02167ca3a8f459c664ad21a2f733794104ced7f2e`  
		Last Modified: Thu, 19 Nov 2026 22:09:33 GMT  
		Size: 901.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:37c14515d6182e30582e6c0a4ac975f7a88d4a1c64dca9a3bc6b9973aa15295a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7461393 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c75fc9cbc067e69980b0d82efa33253bc99554b4d873af9e793f1028a5bff7ad`

```dockerfile
```

-	Layers:
	-	`sha256:26419dfecf2434fc089210bb6fd676459f4c253b62ab92b68a2136f8b16d7f0a`  
		Last Modified: Thu, 19 Nov 2026 22:09:34 GMT  
		Size: 7.4 MB (7444825 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:15ee88803c8e01ef3e1d4d9f8ea30d7a4dfe857fed6a380b213ca788232adc49`  
		Last Modified: Thu, 19 Nov 2026 22:09:33 GMT  
		Size: 16.6 KB (16568 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-trixie` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:9dd4575fbe467d56c113d92f02b69e9e0324c76c700a711c50929c7c4246ce2b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **223.7 MB (223699888 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf9d6c6ba9c31568237393fc10de8189aa2bd3b0de418544c8367d19b0217105`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Thu, 19 Nov 2026 22:08:34 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 19 Nov 2026 22:08:34 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 19 Nov 2026 22:08:34 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 19 Nov 2026 22:08:34 GMT
ENV CLOJURE_VERSION=1.12.7.1681
# Thu, 19 Nov 2026 22:08:34 GMT
WORKDIR /tmp
# Thu, 19 Nov 2026 22:08:50 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "4b0d4df753c477683c6237906e65cdaad1d30ab6283b3afe8abfbaca48e90120 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 19 Nov 2026 22:08:51 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 19 Nov 2026 22:08:51 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 19 Nov 2026 22:08:51 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 19 Nov 2026 22:08:51 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:23b69c48ce5c2a6fb0681d959fa700427ad2a7cf7e6be5d25249170a1853d7ad`  
		Last Modified: Thu, 05 Nov 2026 06:16:05 GMT  
		Size: 49.8 MB (49778604 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83af64a5ad8cc0ff2861343ccb84cfdcfe47267aa6a1060ec3a8307d65e999fb`  
		Last Modified: Thu, 19 Nov 2026 22:09:13 GMT  
		Size: 91.5 MB (91525634 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c4c509b2046cfe918b3746a288d618f1769004abf48ef0bc6ea9e21292cc4b0`  
		Last Modified: Thu, 19 Nov 2026 22:09:12 GMT  
		Size: 82.4 MB (82394107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:000296bf0a6c307d8945b3512bb4d582249afa78d5a65eba21fd32776f6e896e`  
		Last Modified: Thu, 19 Nov 2026 22:09:09 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a1278315dcc82df90f01b33b234a762a36df1dc22aa1296fa0030b328d72b59`  
		Last Modified: Thu, 19 Nov 2026 22:09:09 GMT  
		Size: 898.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:e1ddf45db3f763f80d530763df5dfd120caf34c79ffb33fb5401275d010f67bc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7467950 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7e7f45025232d9f3035446cf039b318aa1c6728bfc90a26d1f3ca90f983463b8`

```dockerfile
```

-	Layers:
	-	`sha256:4e099908791956d01e7f288eb8be206fa716ffb1895cc4d88629c72798ed63a9`  
		Last Modified: Thu, 19 Nov 2026 22:09:09 GMT  
		Size: 7.5 MB (7451239 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:92c0b391b29a911cb9e8826f626fcde213b0be3cc0bfba9303f918f7eac93ddb`  
		Last Modified: Thu, 19 Nov 2026 22:09:09 GMT  
		Size: 16.7 KB (16711 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-trixie` - linux; ppc64le

```console
$ docker pull clojure@sha256:cd12443908953bac817ff8513bc552cb1e2f670c5ec804af7ca18df2830a556c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **231.3 MB (231336122 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8593ca10d34bdd3649d6a1a40dab17eaee21758363c22076375fcd1eb6f6a700`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 16:02:19 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 05 Nov 2026 16:02:19 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 05 Nov 2026 16:02:19 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 16:02:19 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Thu, 05 Nov 2026 16:02:20 GMT
WORKDIR /tmp
# Thu, 05 Nov 2026 16:12:23 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 05 Nov 2026 16:12:23 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 10 Nov 2026 02:51:19 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 10 Nov 2026 02:51:19 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 10 Nov 2026 02:51:19 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:9acf5fc430af42e0444193402206b9d2b5c2c4692602efa65ff7c784c52790c2`  
		Last Modified: Thu, 05 Nov 2026 06:18:00 GMT  
		Size: 53.2 MB (53225589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49c6a745c05ed8183f7d78d41d53dcc6725d2853049a6761ad29bfd0076632b4`  
		Last Modified: Thu, 05 Nov 2026 16:07:19 GMT  
		Size: 90.1 MB (90111726 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7e585def3d42ccedd8909a3cce1803f954976f123c537c8b40d2154dde8cc09`  
		Last Modified: Thu, 05 Nov 2026 16:13:02 GMT  
		Size: 88.0 MB (87997266 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c243e5bb979022bd1081f662991122301742bf185ed1522239288bd604a990b2`  
		Last Modified: Thu, 05 Nov 2026 16:13:00 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2b1cba74cc934ae3d9a55a31ef2544f832054506a39c071d404812283f4c2de`  
		Last Modified: Tue, 10 Nov 2026 02:51:53 GMT  
		Size: 896.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:1775f6d4bbe68b8633de8a323b784c481d6333c4c3e484f3ecbde671c146a3b7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7447332 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7bd5b0931898b7d2c39c297675747e647184810cd56b0f2393313959f0efa59b`

```dockerfile
```

-	Layers:
	-	`sha256:3a116584749a7ef3cd0408bb3aed372ea05fea6f93609dbdbb47968f85a34808`  
		Last Modified: Thu, 12 Nov 2026 08:43:46 GMT  
		Size: 7.4 MB (7430703 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1f530c14c38dfc55ec7c519c83075fa17949c9f364166fe0c73a6a79d89a25ff`  
		Last Modified: Thu, 12 Nov 2026 08:43:46 GMT  
		Size: 16.6 KB (16629 bytes)  
		MIME: application/vnd.in-toto+json
