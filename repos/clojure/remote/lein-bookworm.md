## `clojure:lein-bookworm`

```console
$ docker pull clojure@sha256:8f0a898df43480bdbcb4038c00045acf5a68f5b72050923a25fbe395a0d8e912
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

### `clojure:lein-bookworm` - linux; amd64

```console
$ docker pull clojure@sha256:2d075f818d66e9f57de288682fb718d1187ba7c11fa2b7c42c562677ec67037c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **165.7 MB (165705158 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e7e6d23dbf10d7dae61f974501888f072098031a3ed005d14e91c7ee1958f89a`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1783900800'
# Tue, 04 Aug 2026 02:53:21 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 02:53:21 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 02:53:21 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:53:21 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 04 Aug 2026 02:53:21 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 04 Aug 2026 02:53:21 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 02:54:27 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 04 Aug 2026 02:54:27 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 04 Aug 2026 02:54:27 GMT
ENV LEIN_ROOT=1
# Tue, 04 Aug 2026 02:54:29 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 04 Aug 2026 02:54:29 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 04 Aug 2026 02:54:29 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 04 Aug 2026 02:54:29 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:c4013e1e38341061b49f51c4b44f2e534c25135d7ed5b75af8b2094766bb5519`  
		Last Modified: Tue, 14 Jul 2026 00:14:05 GMT  
		Size: 48.5 MB (48497403 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3c8e57305f493cb95967fd1b6254972f7d2d07199de5da14447af1c8a38e7b4`  
		Last Modified: Tue, 04 Aug 2026 02:54:48 GMT  
		Size: 92.6 MB (92574572 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aaae871f11346d87c55766cb76a9a5513d73fc1716dc3b2ba5e469838314dec1`  
		Last Modified: Tue, 04 Aug 2026 02:54:46 GMT  
		Size: 20.1 MB (20117569 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a6a45388aff65e9a0e376df7d2d920722588332a2d8be1ca70330c2430c6d1e`  
		Last Modified: Tue, 04 Aug 2026 02:54:45 GMT  
		Size: 4.5 MB (4515184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:07226f686d56e89d89b89e25817149320a366a989c158360b9f4d5b853942a53`  
		Last Modified: Tue, 04 Aug 2026 02:54:45 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:lein-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:1833e2e6bfd2531b4293dd81f1d50623c24d10543d56767b57a875e2887eca09
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4272975 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc3f10cbc1144038751e5c2a366619cb4c863d6bdcd5f7a6215ac5d1001a68d1`

```dockerfile
```

-	Layers:
	-	`sha256:2f21dfdbcf32ea82c830c5cc570fde1801a5df8b647424b86df58c4adebd2e13`  
		Last Modified: Tue, 04 Aug 2026 02:54:45 GMT  
		Size: 4.3 MB (4253346 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:31ab6027f31a69b1a2e614892687690a5c04b0471e746659954d6b84f6e38288`  
		Last Modified: Tue, 04 Aug 2026 02:54:45 GMT  
		Size: 19.6 KB (19629 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:lein-bookworm` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:63c26011e2b08b157c3ed9b327c178ef943f549997e12e7070a873ae37e2a506
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **164.4 MB (164381962 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fffeb3b9f955175d145f90585507f90f337ddcb888d784ba94ce0604be575e5a`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1783900800'
# Tue, 04 Aug 2026 02:53:37 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 02:53:37 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 02:53:37 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:53:37 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 04 Aug 2026 02:53:37 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 04 Aug 2026 02:53:38 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 02:54:45 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 04 Aug 2026 02:54:45 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 04 Aug 2026 02:54:45 GMT
ENV LEIN_ROOT=1
# Tue, 04 Aug 2026 02:54:47 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 04 Aug 2026 02:54:47 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 04 Aug 2026 02:54:47 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 04 Aug 2026 02:54:47 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:445be8da0a7289e4b5d70a5c779ad63d484e76aa14fe2ad45893da9eb077e4e8`  
		Last Modified: Tue, 14 Jul 2026 00:13:50 GMT  
		Size: 48.4 MB (48383689 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4971533f82c5a459325232fde931e3f087e64a4ec3e6a06bf7ab857fc8d340b`  
		Last Modified: Tue, 04 Aug 2026 02:55:09 GMT  
		Size: 91.5 MB (91542252 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c07720d516cc26bbc5323d3e6d389bc808776e6ad1fd29f17acc58bfe958ab4a`  
		Last Modified: Tue, 04 Aug 2026 02:55:07 GMT  
		Size: 19.9 MB (19940395 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec4b65de7c4963b60f1c14ed567a66d303bade7a73b282fa6037ac64f16a7394`  
		Last Modified: Tue, 04 Aug 2026 02:55:06 GMT  
		Size: 4.5 MB (4515195 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3fe03a175e01ff04c58e49bb52f7c3e16c739d7f426c13d180855b814a29060`  
		Last Modified: Tue, 04 Aug 2026 02:55:06 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:lein-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:a27cb94b0b5db5913a6d48f663b4f1653d59cbea545339ade13a5e9aff7bbda4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4272852 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fe1778c6595c6b09fc1af928816dd0ae3784c4421c4a503d29a263975fd0ba23`

```dockerfile
```

-	Layers:
	-	`sha256:6fe1788f4189b1282621fe7fb89762794f00bf141131d803702064ebb2908e94`  
		Last Modified: Tue, 04 Aug 2026 02:55:06 GMT  
		Size: 4.3 MB (4253030 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2505e30b771aacd4cbb424f17187645f87bdc2598dfe6a32d9b18681f3f35d92`  
		Last Modified: Tue, 04 Aug 2026 02:55:06 GMT  
		Size: 19.8 KB (19822 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:lein-bookworm` - linux; ppc64le

```console
$ docker pull clojure@sha256:bef50db54db43aa9f3bc226fc61072d9926761c0dfca54674caf2f1c1d8b7a28
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **169.1 MB (169103754 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5927a54b22f7a84b1aa747afd707b376c5861de80f189ce2ae14b52fd8b49a7b`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1783900800'
# Tue, 04 Aug 2026 04:43:03 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 04:43:03 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 04:43:03 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 04:43:03 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 04 Aug 2026 04:43:03 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 04 Aug 2026 04:43:03 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 04:46:26 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 04 Aug 2026 04:46:26 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 04 Aug 2026 04:46:26 GMT
ENV LEIN_ROOT=1
# Tue, 04 Aug 2026 04:46:31 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 04 Aug 2026 05:38:21 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 04 Aug 2026 05:38:21 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 04 Aug 2026 05:38:21 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:380d3eabd945505d4db48078d6d4aeda6a011b9da5c9767fd7ea92fdb78f37f3`  
		Last Modified: Tue, 14 Jul 2026 00:12:57 GMT  
		Size: 52.3 MB (52341834 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c2b7a5ae2783074d802366093047d5a166bf3592a36ad11dcdc86d5868d7e0a`  
		Last Modified: Tue, 04 Aug 2026 04:47:50 GMT  
		Size: 91.9 MB (91914020 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1687a719b4a9a87e674979a45be2c647b5fa1f75722a0df067602877982936ad`  
		Last Modified: Tue, 04 Aug 2026 04:47:47 GMT  
		Size: 20.3 MB (20332230 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92399b7ffc55ca353f1f0cbbc22ea518738830558f3a26996c4e026d7c82926b`  
		Last Modified: Tue, 04 Aug 2026 04:47:46 GMT  
		Size: 4.5 MB (4515240 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e066c8516b4dd263c5703207b59ad9f65629c5fcc2b3130430738f3e53799d52`  
		Last Modified: Tue, 04 Aug 2026 05:38:37 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:lein-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:c96de0f57c90c218eb56fb737c9a6bf0d147a87abc074c643b88a3640b07872d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4258263 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9c8803feb25385f492ef45ef221366dc40719ea8cef59a9d3f14a131c2295fa7`

```dockerfile
```

-	Layers:
	-	`sha256:7ecda38ab38307ac4fca1b9c6d74e10c7cc8c05260feff1b6fca82cd9589f350`  
		Last Modified: Tue, 04 Aug 2026 05:38:37 GMT  
		Size: 4.2 MB (4238555 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:677482769d38748d11ee848a82838f9cae0d312b6bb064af41128a0d809cd92d`  
		Last Modified: Tue, 04 Aug 2026 05:38:37 GMT  
		Size: 19.7 KB (19708 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:lein-bookworm` - linux; s390x

```console
$ docker pull clojure@sha256:7be80b48759c0838f2595b6c1aa0883294a2979966245c823dd1af7bc07abd03
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **159.9 MB (159864033 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f68c91dd269fc65cf10f87f9683a0436d2126586bc2b41488cec6232111ef86`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'bookworm' '@1783900800'
# Tue, 04 Aug 2026 03:01:28 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 03:01:28 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 03:01:28 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 03:01:28 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 04 Aug 2026 03:01:28 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 04 Aug 2026 03:01:28 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 03:02:42 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 04 Aug 2026 03:02:42 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 04 Aug 2026 03:02:42 GMT
ENV LEIN_ROOT=1
# Tue, 04 Aug 2026 03:02:44 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 04 Aug 2026 03:02:44 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 04 Aug 2026 03:02:44 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 04 Aug 2026 03:02:44 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:20ea3b67db3ab9b79a4dc8b59ccefeec0dd58934671f4b22a93d9364bb839f4a`  
		Last Modified: Tue, 14 Jul 2026 00:14:20 GMT  
		Size: 47.2 MB (47157279 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e56f29808cdae0b0ae79a057631e06d5ee2175c9d7e6333974220725c749743`  
		Last Modified: Tue, 04 Aug 2026 03:03:10 GMT  
		Size: 88.4 MB (88420384 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f39a3285608a9349b625a1cc3cd6f71299b7255b9740554a1fd060330fb3a63`  
		Last Modified: Tue, 04 Aug 2026 03:03:09 GMT  
		Size: 19.8 MB (19770730 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5419c95b19692e62ab878a44092cc0269598aa96e2b0968ba957ce39dd73e54f`  
		Last Modified: Tue, 04 Aug 2026 03:03:08 GMT  
		Size: 4.5 MB (4515209 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1be4aa268e7f22315e0f83fc100b122584fd21b0966eee3b4a18f6e4247c7353`  
		Last Modified: Tue, 04 Aug 2026 03:03:08 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:lein-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:6b44ea3e86a122339accfa33406dbbfb2020a7928d4d0ac5cf19eb8dacf6a4ea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4249350 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b50c48b04461c051fe17fbfd1b9ecc6ac7cacaff41eccea6b05e5626d884dfed`

```dockerfile
```

-	Layers:
	-	`sha256:e5cd3f38cbae66a83df4d69b27c5a4b0d2c782311a1ce39344da161de1160874`  
		Last Modified: Tue, 04 Aug 2026 03:03:08 GMT  
		Size: 4.2 MB (4229722 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7ad78c2a8f41493503932e97c8012ee5317b08de179f5f6ec209ecf08eda92ab`  
		Last Modified: Tue, 04 Aug 2026 03:03:08 GMT  
		Size: 19.6 KB (19628 bytes)  
		MIME: application/vnd.in-toto+json
