## `clojure:temurin-26-tools-deps-trixie-slim`

```console
$ docker pull clojure@sha256:2d1dd46d078bba88fbf05404a613385e5d6b4cf9e68bd2c5ea65822a489d01aa
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-26-tools-deps-trixie-slim` - linux; amd64

```console
$ docker pull clojure@sha256:ea43cbc6222cdf2b46e7039f1f83f9266970dcd790c8fca0ef7422366988c060
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **193.4 MB (193397797 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dce8a5f299be971edcbec0152197e8de4b4dfba8c983a5a181498f9cfbd13e7c`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 01:21:44 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 21 Oct 2026 01:21:44 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 21 Oct 2026 01:21:44 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 01:21:44 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 21 Oct 2026 01:21:44 GMT
WORKDIR /tmp
# Wed, 21 Oct 2026 01:22:00 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 21 Oct 2026 01:22:00 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 21 Oct 2026 01:22:00 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 21 Oct 2026 01:22:00 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 21 Oct 2026 01:22:00 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:f2be67225471500c788ce88c597eb5ea8336e912ad1ca4815650e0281afe2034`  
		Last Modified: Tue, 20 Oct 2026 23:31:18 GMT  
		Size: 29.8 MB (29843579 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6a1b81425bfedd9025b3aee700b46ae693c66e28ec087c8676b6f30fea71164`  
		Last Modified: Wed, 21 Oct 2026 01:22:21 GMT  
		Size: 94.6 MB (94563492 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6306832a5f1f4cd58e62e186e7f369a6d27e706a3e227bb19c4ad6ca7ad5d41d`  
		Last Modified: Wed, 21 Oct 2026 01:22:21 GMT  
		Size: 69.0 MB (68989684 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9d09a9faa2d9e6f9985646c4dec3d1691ffb2717d5f26b389813b7510aecb00`  
		Last Modified: Wed, 21 Oct 2026 01:22:17 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2d7d45886ad3d052a460924ee6e461e921b1f8884353879027ffa55a97a54d4`  
		Last Modified: Wed, 21 Oct 2026 01:22:17 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-tools-deps-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:89cbf52d20441ed96f8321f9c487dc53e8daf1dfdf91fb12870acf07dea16dc5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5242889 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d31e39fddc6dece103e2687daafdb3df911b8867c8a5e058230d9b60b43fd517`

```dockerfile
```

-	Layers:
	-	`sha256:b01f738831bb8389833db9802d081fe7cccc47fdbb323230e3b8af4d1947bd8a`  
		Last Modified: Wed, 21 Oct 2026 01:22:18 GMT  
		Size: 5.2 MB (5226930 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9d38904b6d640e3da5788fbbe1ed9e3020a96dde9ddb14330ae729f36a1eb7a5`  
		Last Modified: Wed, 21 Oct 2026 01:22:17 GMT  
		Size: 16.0 KB (15959 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-tools-deps-trixie-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:67f220a6189f25069fdbe4bc6911a6dcdf030fed74e0226a6bc6525fd995c832
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **192.6 MB (192550715 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bbee6f61f0e8b97c93065dd5f2ded4dc02cd6109ce76b01739cef88768651bb1`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 01:27:53 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 21 Oct 2026 01:27:53 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 21 Oct 2026 01:27:53 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 01:27:53 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 21 Oct 2026 01:27:53 GMT
WORKDIR /tmp
# Wed, 21 Oct 2026 01:28:11 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 21 Oct 2026 01:28:11 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 21 Oct 2026 01:28:11 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 21 Oct 2026 01:28:11 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 21 Oct 2026 01:28:11 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:ddc0c1e36a6793411b6c8d48e1ddad2987405d377da92bcf532ed3181c2e4d62`  
		Last Modified: Tue, 20 Oct 2026 23:31:05 GMT  
		Size: 30.2 MB (30200478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1d2edd1c8d157f7cf076f6819be6ce0c6fe3cabf899529e79dc90c6a111f374`  
		Last Modified: Wed, 21 Oct 2026 01:28:33 GMT  
		Size: 93.5 MB (93543600 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:230c581046f8e7939c2a75940ed801363af6e67e71a325c5398991b268255d00`  
		Last Modified: Wed, 21 Oct 2026 01:28:32 GMT  
		Size: 68.8 MB (68805593 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81df481d79e63ca11b56594c75018c86ea55401e7cb352143db4a30f540ba8b6`  
		Last Modified: Wed, 21 Oct 2026 01:28:29 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9fb6b4d5627a7a7d31d14e11abf93614ffcca078c4899980ad598a865958abc`  
		Last Modified: Wed, 21 Oct 2026 01:28:29 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-tools-deps-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:2621f3b0671222d55f387dce57585419cfd81f9f5517396f37a149cc73632531
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5248765 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:115b5bdfc655a1ec6c249d92797be15c54059a617b03f5886dba732f8a262001`

```dockerfile
```

-	Layers:
	-	`sha256:70d0def276e5a7c278e7ad1cc9c5f862956008bf4bcc5162727e2127e00c98d7`  
		Last Modified: Wed, 21 Oct 2026 01:28:30 GMT  
		Size: 5.2 MB (5232688 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:08709da1b393ee42c925dd3355184054771b45e9f973213e3aba28cfcd01f5f7`  
		Last Modified: Wed, 21 Oct 2026 01:28:29 GMT  
		Size: 16.1 KB (16077 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-tools-deps-trixie-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:be83b57dc11e00ac445b886d72f371c6b3b893f80d02d8b6ee6e62fe706f67e7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **201.4 MB (201420733 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8c2cdf02c825d30fca5a077b0745ab99b7704e96cf946f7c9318822df152c180`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1791158400'
# Sat, 17 Oct 2026 06:44:59 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 17 Oct 2026 06:44:59 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 17 Oct 2026 06:44:59 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Oct 2026 06:44:59 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Sat, 17 Oct 2026 06:45:00 GMT
WORKDIR /tmp
# Sat, 17 Oct 2026 06:52:57 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Sat, 17 Oct 2026 06:52:58 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Sat, 17 Oct 2026 06:52:58 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sat, 17 Oct 2026 06:52:58 GMT
ENTRYPOINT ["entrypoint"]
# Sat, 17 Oct 2026 06:52:58 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:5ca0f09a490b90798516816fc3a5f086b1467ed56f5252150458c41384c9aa5f`  
		Last Modified: Tue, 06 Oct 2026 00:16:24 GMT  
		Size: 33.7 MB (33651599 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f6275636597043f36e4bc7c271ac19ada4a6931e012217b3564adbc0c86125c7`  
		Last Modified: Sat, 17 Oct 2026 06:49:07 GMT  
		Size: 93.4 MB (93350847 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e5e5a1a1eb6a2c167c28254cdde4baeb610543f9533f399a4541be8f8d833c6`  
		Last Modified: Sat, 17 Oct 2026 06:53:37 GMT  
		Size: 74.4 MB (74417248 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30b9db1844420cc1ad0c9ffe137deafa9970e2390260927fd6f8c910de5c5f95`  
		Last Modified: Sat, 17 Oct 2026 06:53:34 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ac9b7d7cd511c1df4115a56222348779a467b9baf02a8aa5139586b8afe33d6`  
		Last Modified: Sat, 17 Oct 2026 06:53:34 GMT  
		Size: 395.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-tools-deps-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:88da3024d9820c016c11d174502eb0e1ee6edcf2d54e69ff94f36b961364af51
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5232521 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:568b6141805fea4c4ad20d89ae29091a843b6fedb9503b943af35e41f9505b7a`

```dockerfile
```

-	Layers:
	-	`sha256:93f8eb9492f706423a3bceeb1c64f886da6a92360293367aa40b073f025533cc`  
		Last Modified: Sat, 17 Oct 2026 06:53:35 GMT  
		Size: 5.2 MB (5216514 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1d9b9578f2ee23d553a14a8a5ca163e87d25fafd36f98fd4f54a808801171aa0`  
		Last Modified: Sat, 17 Oct 2026 06:53:34 GMT  
		Size: 16.0 KB (16007 bytes)  
		MIME: application/vnd.in-toto+json
