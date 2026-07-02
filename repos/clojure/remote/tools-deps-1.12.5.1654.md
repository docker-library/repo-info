## `clojure:tools-deps-1.12.5.1654`

```console
$ docker pull clojure@sha256:09dc5d7668373bc2bbf30d195b2b20b931ac7abd613d404f52e0cd91de93ee62
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

### `clojure:tools-deps-1.12.5.1654` - linux; amd64

```console
$ docker pull clojure@sha256:f147580a7dd244af69891bb76980db36f9a15b0db7a0c6cb5edee36020181709
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **219.2 MB (219203084 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:485de303a35ed75eea7f0c814ce9b2a98a4fbbba5d5db1dc7b73818d045c5aaa`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1782172800'
# Thu, 02 Jul 2026 05:54:34 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 05:54:34 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 05:54:34 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:54:34 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Thu, 02 Jul 2026 05:54:34 GMT
WORKDIR /tmp
# Thu, 02 Jul 2026 05:54:47 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 02 Jul 2026 05:54:47 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 02 Jul 2026 05:54:47 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 02 Jul 2026 05:54:47 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 02 Jul 2026 05:54:47 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:425befdf76e52426879d2abe42093a00dca59a893e7b4fa2a7679b0180b71d4b`  
		Last Modified: Wed, 24 Jun 2026 00:27:40 GMT  
		Size: 48.5 MB (48502210 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d6e0b64f461a3d5caa37a4ccc79b74b32950b484e644ef91a20af17b736ee93e`  
		Last Modified: Thu, 02 Jul 2026 05:55:10 GMT  
		Size: 92.6 MB (92574565 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a58eb53c9cae9b0f953b0856de7579d1afb7f391eab6673648db4aece3813b34`  
		Last Modified: Thu, 02 Jul 2026 05:55:10 GMT  
		Size: 78.1 MB (78125266 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8acc75b43198885184a862d88b8061d8212967859e028d95f9c6ebfe835e2b2e`  
		Last Modified: Thu, 02 Jul 2026 05:55:06 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3617ab7cb61c007678baeace7583c19be236489bcc0b4b325243eb3d06eea5e`  
		Last Modified: Thu, 02 Jul 2026 05:55:06 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:tools-deps-1.12.5.1654` - unknown; unknown

```console
$ docker pull clojure@sha256:361f8e5a55a6d983a3d259807102644155bab01c1581c134d34012979ecec886
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7363453 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a1bae6269b6827d0d8c4af6c8a06247246de8440d7a97610ec25317e6aac06e`

```dockerfile
```

-	Layers:
	-	`sha256:df2d1740070be58034e4800c1b98e0e88ac045d44a2b08ea6ceab31de1d4a322`  
		Last Modified: Thu, 02 Jul 2026 05:55:07 GMT  
		Size: 7.3 MB (7345528 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c59bb4198a7ff2881370e13610489455adee6912fbbebe7a5c89238ad0c5ebe3`  
		Last Modified: Thu, 02 Jul 2026 05:55:06 GMT  
		Size: 17.9 KB (17925 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:tools-deps-1.12.5.1654` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:89dad402b32d1f48313fff67deb4801c3db43148537dc47db8954faf75c720e2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **218.1 MB (218062400 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d0d91e0c5c7b212f8a0d471b04db14c13aec26c3b3ba2fe6cfdc10274c5075e3`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1782172800'
# Thu, 02 Jul 2026 05:55:03 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 05:55:03 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 05:55:03 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:55:03 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Thu, 02 Jul 2026 05:55:03 GMT
WORKDIR /tmp
# Thu, 02 Jul 2026 05:55:17 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 02 Jul 2026 05:55:17 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 02 Jul 2026 05:55:17 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 02 Jul 2026 05:55:17 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 02 Jul 2026 05:55:17 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:0fb1189398e2e4b474d43aac6502510d0da0318e70137a377c21087f198814db`  
		Last Modified: Wed, 24 Jun 2026 00:27:19 GMT  
		Size: 48.4 MB (48389201 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34edcb18ba267715e3fceaa384ee9b67b9568058da2b54e3f9453b5abc479f28`  
		Last Modified: Thu, 02 Jul 2026 05:55:41 GMT  
		Size: 91.5 MB (91542249 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9822edb49460992c2068d4a0ad8158bcc091b31e2edd5dcf9ab1a4ebdc4fa07e`  
		Last Modified: Thu, 02 Jul 2026 05:55:40 GMT  
		Size: 78.1 MB (78129906 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c351589e7e18c4662b8577d0a3e16eaeec2e922effe3995ad5e890f236abca4`  
		Last Modified: Thu, 02 Jul 2026 05:55:37 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5dcb1533060f2315503fc3efc18f9c1455129408a5c8cbe55c7f063110d37eae`  
		Last Modified: Thu, 02 Jul 2026 05:55:37 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:tools-deps-1.12.5.1654` - unknown; unknown

```console
$ docker pull clojure@sha256:2b521bbd8a4733c592aa4f1c70f77273d12a3acfac7d2b8d694e0cd46a8e0a3b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7369475 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5d4fb37f28ee8e715138de42d00d6bd5dd7c5a219d5f4c7f2fabe5506af69e5f`

```dockerfile
```

-	Layers:
	-	`sha256:384ee7a53a1af181506d0d3bdfdc2e4929420e290d01cd587d71f66c50636fe5`  
		Last Modified: Thu, 02 Jul 2026 05:55:37 GMT  
		Size: 7.4 MB (7351360 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b678e91a44f0ab76cc35e9cb85bdc4c0c027c0127f08eeb0c08466a6d538827f`  
		Last Modified: Thu, 02 Jul 2026 05:55:37 GMT  
		Size: 18.1 KB (18115 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:tools-deps-1.12.5.1654` - linux; ppc64le

```console
$ docker pull clojure@sha256:d92689d178c4159ffa051c4e3741653ea9debb78cd085e2d7b18b00c8abb7ead
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **228.2 MB (228220605 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:18d0a5bcec4439e283b51cf02064cb612790cb2aeb56250f72945f24160b1ad7`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1782172800'
# Thu, 02 Jul 2026 06:43:22 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 06:43:22 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 06:43:22 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 06:43:22 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Thu, 02 Jul 2026 06:43:22 GMT
WORKDIR /tmp
# Thu, 02 Jul 2026 07:42:32 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 02 Jul 2026 07:42:32 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 02 Jul 2026 07:42:32 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 02 Jul 2026 07:42:32 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 02 Jul 2026 07:42:32 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:55b0e891f4e8dc14bf4bc7e853254fcf1f3ba5a8e8e3c07c21e7dd5bd6d87882`  
		Last Modified: Wed, 24 Jun 2026 00:27:34 GMT  
		Size: 52.3 MB (52346847 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea1de9677813712ddada398d96870b701336e684bc5a28731b883aed48b1d31b`  
		Last Modified: Thu, 02 Jul 2026 06:47:39 GMT  
		Size: 91.9 MB (91914031 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9accc849a98fe0d1b52514616b756be777f8e6316436bac9299694a60247b16b`  
		Last Modified: Thu, 02 Jul 2026 07:43:10 GMT  
		Size: 84.0 MB (83958687 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed4e319424ec48720e45a50843dd8945bdfde61c6d64a60f8705fdf3ec3b0117`  
		Last Modified: Thu, 02 Jul 2026 07:43:07 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b185c3d3012076b171848822370b69b6a345fe6f723e51be73e6736e232793a`  
		Last Modified: Thu, 02 Jul 2026 07:43:07 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:tools-deps-1.12.5.1654` - unknown; unknown

```console
$ docker pull clojure@sha256:f9e44bd104d4309e3703c18ee5effede3f98b57ae0f5a92bdca60cce7d890150
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7352101 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f8c7ccb8f2626b6261dc9881da0b6fb510290dc979d66925c92aaa9313734cb`

```dockerfile
```

-	Layers:
	-	`sha256:a154897859519862141b9bca2a11349f999af4c736c7331ecdb07d6ca6c7bd7f`  
		Last Modified: Thu, 02 Jul 2026 07:43:07 GMT  
		Size: 7.3 MB (7334092 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:634ee256be73183c92a07b4ddb348ad1a5f6026c2351c51233b549ecac137fe9`  
		Last Modified: Thu, 02 Jul 2026 07:43:07 GMT  
		Size: 18.0 KB (18009 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:tools-deps-1.12.5.1654` - linux; s390x

```console
$ docker pull clojure@sha256:cbf44ba88a1a54e29a0d87adead27c2319017a105b8132d606796e7e37d37f7c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **212.5 MB (212512433 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3975592e681fdaa78ac3b7e23ef2eb576a2860ac33407313cadcf9b22e292840`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'bookworm' '@1782172800'
# Thu, 02 Jul 2026 05:57:59 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 05:57:59 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 05:57:59 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:57:59 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Thu, 02 Jul 2026 05:57:59 GMT
WORKDIR /tmp
# Thu, 02 Jul 2026 05:58:11 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 02 Jul 2026 05:58:11 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 02 Jul 2026 05:58:11 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 02 Jul 2026 05:58:11 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 02 Jul 2026 05:58:11 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:bdd2e9d83d68023204331dd445067114dbd3500d2d496368624fa7ef81743d4a`  
		Last Modified: Wed, 24 Jun 2026 00:27:09 GMT  
		Size: 47.2 MB (47161675 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58d333288991dbf8d9702cf5c185a0a8ba4b2af7090afa7eb33a3583cc74054b`  
		Last Modified: Thu, 02 Jul 2026 05:58:39 GMT  
		Size: 88.4 MB (88420382 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed9b58737fc5f57e942d4c889cc1ecd7bd92d0b4589ed050aad5b4cd64dd0fa9`  
		Last Modified: Thu, 02 Jul 2026 05:58:39 GMT  
		Size: 76.9 MB (76929334 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab936fa54561dd070c553720293ceb0638235f07f0de702ff619593f5c0637f6`  
		Last Modified: Thu, 02 Jul 2026 05:58:37 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:183e7437d3a2b56b2bbb64371c42782a9997706c05dc9a8c9ae4154c84789190`  
		Last Modified: Thu, 02 Jul 2026 05:58:37 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:tools-deps-1.12.5.1654` - unknown; unknown

```console
$ docker pull clojure@sha256:22fe8982359d190b664421af6afb7def0976d116473f161b8e32a913bccefe1a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.3 MB (7339334 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f80e4a86f7e037388c18304cd9d5f2bf96ecbced021efaec24197b1a90bd28b1`

```dockerfile
```

-	Layers:
	-	`sha256:7606a812d3f2729f585d42dde6007ae199dfcd19201ac27b9963e4421870683f`  
		Last Modified: Thu, 02 Jul 2026 05:58:37 GMT  
		Size: 7.3 MB (7321409 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a7e9a34864d1bb1aa3863f12fb49065d00c46f1bef91417258b5d4a4975897a5`  
		Last Modified: Thu, 02 Jul 2026 05:58:37 GMT  
		Size: 17.9 KB (17925 bytes)  
		MIME: application/vnd.in-toto+json
