## `clojure:temurin-21-tools-deps-trixie`

```console
$ docker pull clojure@sha256:320162ea411c30d4172f8f8a5171b99fa2225053dd53352cee869b872466fd46
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

### `clojure:temurin-21-tools-deps-trixie` - linux; amd64

```console
$ docker pull clojure@sha256:00693e612efeb3a4c2bdaec6bde5614b95cbd58c99ff624cf4b3b8f45c0b6521
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **290.0 MB (290014203 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b368e652db938521a76f890a53bae1f4e6b410bebdefc31f3c481b426ec87b45`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 02:21:25 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 14 Jul 2026 02:21:25 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 14 Jul 2026 02:21:25 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 02:21:25 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Tue, 14 Jul 2026 02:21:25 GMT
WORKDIR /tmp
# Tue, 14 Jul 2026 02:21:41 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 14 Jul 2026 02:21:41 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 14 Jul 2026 02:21:41 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 14 Jul 2026 02:21:41 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 14 Jul 2026 02:21:41 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:b890c9407285c31d25426ef154b55c72e225f19b478a59451b01a8a44f5ea4f7`  
		Last Modified: Tue, 14 Jul 2026 00:14:54 GMT  
		Size: 49.3 MB (49312572 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f748310a7834b1f39e9ac66cdefc815247614dd26c4faa2fb62c41f156f1dd01`  
		Last Modified: Tue, 14 Jul 2026 02:22:05 GMT  
		Size: 158.2 MB (158166917 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:985bc908346f3f9a3336dd18ea258996921c89640d33668b8c17c26e4f422442`  
		Last Modified: Tue, 14 Jul 2026 02:22:04 GMT  
		Size: 82.5 MB (82533674 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b0233ee1dded273938b9932a266c57268f7941ca40e6b870a6a5848b328be17`  
		Last Modified: Tue, 14 Jul 2026 02:22:01 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:247023cfdc647b6806b7dd840928df25ef6c86d061fc0166e2ed87562d965126`  
		Last Modified: Tue, 14 Jul 2026 02:22:01 GMT  
		Size: 395.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-tools-deps-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:d4307d7c1d9d1e761bf51bda68ee83344a738edf26801c9c479fa6e73577633d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7486621 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d22e6162f8511f9048f7e35a89cc9fcf90922d25afb286003de18ed1642cbd07`

```dockerfile
```

-	Layers:
	-	`sha256:f3cc7692146577ef6561d2f0b380e4e1a25dff9d94df6ce84942d8819915549a`  
		Last Modified: Tue, 14 Jul 2026 02:22:01 GMT  
		Size: 7.5 MB (7470713 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6f88443a8d8c061e62d005f58f3ccc101e32f2172af843d02c6545c4847729a5`  
		Last Modified: Tue, 14 Jul 2026 02:22:00 GMT  
		Size: 15.9 KB (15908 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-tools-deps-trixie` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:8055800cbb1ac98d7e7dc7bcf6d276abca0f99059b32d56b5704206dba4ad44c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **288.5 MB (288479517 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:40f3a82069fd03af98bdd7917e08265ee998dc9a2dac6e8564467ab2c9caab6f`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 02:28:18 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 14 Jul 2026 02:28:18 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 14 Jul 2026 02:28:18 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 02:28:18 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Tue, 14 Jul 2026 02:28:18 GMT
WORKDIR /tmp
# Tue, 14 Jul 2026 02:28:36 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 14 Jul 2026 02:28:36 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 14 Jul 2026 02:28:36 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 14 Jul 2026 02:28:36 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 14 Jul 2026 02:28:36 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:6b89e501e8efce0d3d87e3f6b0f85c417e799a3b36b8f44419609ba7fecf9563`  
		Last Modified: Tue, 14 Jul 2026 00:14:38 GMT  
		Size: 49.7 MB (49674184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bee96e67ac1c98ade3d929c0264b36cb6879b10e1f02521f2d2cb8703cda1401`  
		Last Modified: Tue, 14 Jul 2026 02:29:03 GMT  
		Size: 156.5 MB (156461287 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b75958edf414e42e4dcabe86ed3277eb18ac126f2093ebee4845fd5b01464101`  
		Last Modified: Tue, 14 Jul 2026 02:29:01 GMT  
		Size: 82.3 MB (82343010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d50477e1d1a8d31dca8e4412cc9a8e835621a2d5b343baf27ab0abcd84ffcf5`  
		Last Modified: Tue, 14 Jul 2026 02:28:58 GMT  
		Size: 609.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:482910499da6deca1771227b2e23e8beb19f11fd39e9ea7c226b95c8b0a20d98`  
		Last Modified: Tue, 14 Jul 2026 02:28:58 GMT  
		Size: 395.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-tools-deps-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:db184913a0459cb4a4815525e8f31441a4e3001b7965ee0ade155a8f3f301459
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7493132 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:70daaadd903b31f00bfe48bd34f6abb3a94206db3e82221cbed7731139a70ee6`

```dockerfile
```

-	Layers:
	-	`sha256:b1e7e9f2c57bc7420a7ecfc7fcd9f0883ffdb82e57a9dcf65cdcb4e8a27e259d`  
		Last Modified: Tue, 14 Jul 2026 02:28:58 GMT  
		Size: 7.5 MB (7477106 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7526bb81d66d704e5f774503de21bec59dd8dc3acf799c537e6dadeb4a0a32dc`  
		Last Modified: Tue, 14 Jul 2026 02:28:58 GMT  
		Size: 16.0 KB (16026 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-tools-deps-trixie` - linux; ppc64le

```console
$ docker pull clojure@sha256:6f3dac3e2eb5b5137f5fe567ec70035bdd944a47adca58780d474bb68f8d7992
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **299.4 MB (299420591 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0da56cd9a44730133b2d5ab6b8b17f5aa279671793e6e753908a3fae47e6d720`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1782172800'
# Thu, 02 Jul 2026 07:26:05 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 07:26:05 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 07:26:05 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 07:26:05 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Thu, 02 Jul 2026 07:26:06 GMT
WORKDIR /tmp
# Thu, 02 Jul 2026 07:32:57 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 02 Jul 2026 07:32:57 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 02 Jul 2026 07:32:57 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 02 Jul 2026 07:32:57 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 02 Jul 2026 07:32:57 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:99b7058514c1f9221ac3b0625d731341802c32d464fd604a099ae71d3765bbfd`  
		Last Modified: Wed, 24 Jun 2026 00:30:31 GMT  
		Size: 53.1 MB (53138069 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0964c3ddcdd7f9937042dfeaa30d8db89c3f68bedf99f1bb561e658ecd29cb6`  
		Last Modified: Thu, 02 Jul 2026 07:29:29 GMT  
		Size: 158.3 MB (158343184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:25ce520bb890e6a6c6fa42ce4d01e901d39f9ea18db335b4ae2be6ed4e5dd029`  
		Last Modified: Thu, 02 Jul 2026 07:33:35 GMT  
		Size: 87.9 MB (87938291 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c5c0e8147edd69463fd9750a55e30e94eb77e459697a1563946062b37c03474d`  
		Last Modified: Thu, 02 Jul 2026 07:33:32 GMT  
		Size: 616.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a02631de79c7cf7eed5f7689f3b4f492c6e02dc51590c5c80a8b6ea068b0f775`  
		Last Modified: Thu, 02 Jul 2026 07:33:32 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-tools-deps-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:3fc0802b7a07b437710e07c1a76a47046bb66e40539fb2a09181ec556134feba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7491035 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cdf0a9654abd466fa1bace0eb266ab7a62f8bd3c80ebcfa94a91f088a60669aa`

```dockerfile
```

-	Layers:
	-	`sha256:9453a521ecbfdd65c342816c0fc59d385754dccfd2c1c68b57c4920adbbd674a`  
		Last Modified: Thu, 02 Jul 2026 07:33:32 GMT  
		Size: 7.5 MB (7475080 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c564697b7da114e9489622514c8df4824cee404340a79c5fb46ab7ec0c715c22`  
		Last Modified: Thu, 02 Jul 2026 07:33:31 GMT  
		Size: 16.0 KB (15955 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-tools-deps-trixie` - linux; s390x

```console
$ docker pull clojure@sha256:3fac0459167f04b6e6a1e7ae0b9928f02ed27b259e56995d5ee09b61b775e140
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **280.3 MB (280273449 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2ef5caf905da89659df8bb933896f51c1ade1434d7da1b78b70648bb16eb87db`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 04:31:30 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 14 Jul 2026 04:31:30 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 14 Jul 2026 04:31:30 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 04:31:30 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Tue, 14 Jul 2026 04:31:30 GMT
WORKDIR /tmp
# Tue, 14 Jul 2026 04:33:43 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 14 Jul 2026 04:33:44 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 14 Jul 2026 04:33:44 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 14 Jul 2026 04:33:44 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 14 Jul 2026 04:33:44 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:3b67c0872a1a1dce2849ed0a6773531451a02c1a681d58d89f062b6003c72e9c`  
		Last Modified: Tue, 14 Jul 2026 00:17:47 GMT  
		Size: 49.4 MB (49381708 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9094503ae9443c0a43f6bd76cc77cac91ed11eff783035d33d23643f85ab537d`  
		Last Modified: Tue, 14 Jul 2026 04:33:05 GMT  
		Size: 147.4 MB (147388321 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77a2f2d9e0de852612ed312cf72a1454ea9a25d17c7b504f4b44322797380d9b`  
		Last Modified: Tue, 14 Jul 2026 04:34:10 GMT  
		Size: 83.5 MB (83502384 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d3d19b65c383851585ae037b549073f273e699b2dbc5a2c5cdfa0d38744dfdf`  
		Last Modified: Tue, 14 Jul 2026 04:34:06 GMT  
		Size: 610.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb45156eb44c448b05b969bf6bf04fea4e6a9c4a3bbe4d74a1981b19e51878bf`  
		Last Modified: Tue, 14 Jul 2026 04:34:06 GMT  
		Size: 394.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-tools-deps-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:6de93a7a825d1bab16b671b1f57685a7e79305ac5c1246cd374a35832881cf9d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7481588 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bdfa2adfaa9f13a7d1fbaefc5a9a9a0415e9a94043602e5412c6d06c06d39634`

```dockerfile
```

-	Layers:
	-	`sha256:bb04e78e4547983912bb47c76ec08ffb2690feb2f75930e60d62ae612d75488f`  
		Last Modified: Tue, 14 Jul 2026 04:34:09 GMT  
		Size: 7.5 MB (7466635 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:28b9a38942f170e2bca2b7e3bae61100b18ba9a586b1685db184d8c0359bea0b`  
		Last Modified: Tue, 14 Jul 2026 04:34:08 GMT  
		Size: 15.0 KB (14953 bytes)  
		MIME: application/vnd.in-toto+json
