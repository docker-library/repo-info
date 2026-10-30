## `clojure:lein-bookworm`

```console
$ docker pull clojure@sha256:84488722ad912f84c551513a7fdebe387eb21d1f2cfa7183785de3e3bf04b8ab
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:lein-bookworm` - linux; amd64

```console
$ docker pull clojure@sha256:6e0f38eb2e2e7c86750b108e814ef0b27488673350c5b7893738da2165404303
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **165.8 MB (165771775 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a2a4117241c5a7051de6f39f4a486a299a48bd8ba6f1f188659dd755eddaf7d`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793059200'
# Thu, 29 Oct 2026 20:05:16 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 29 Oct 2026 20:05:16 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 29 Oct 2026 20:05:16 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 29 Oct 2026 20:05:16 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 29 Oct 2026 20:05:16 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 29 Oct 2026 20:05:16 GMT
WORKDIR /tmp
# Thu, 29 Oct 2026 20:06:30 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 29 Oct 2026 20:06:30 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 29 Oct 2026 20:06:30 GMT
ENV LEIN_ROOT=1
# Thu, 29 Oct 2026 20:06:32 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 29 Oct 2026 20:06:32 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 29 Oct 2026 20:06:32 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 29 Oct 2026 20:06:32 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:a4aa977c0d0eb2336dad68941e458308ebf32a717c19ea72e475b9eda8035506`  
		Last Modified: Wed, 28 Oct 2026 00:10:13 GMT  
		Size: 48.5 MB (48524552 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:05e2efc8d94bf735079019fd0c022b0f2a3ac679c391dacba7938e1edab5c394`  
		Last Modified: Thu, 29 Oct 2026 20:06:52 GMT  
		Size: 92.6 MB (92598867 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3da7cc28c134f9852811bafb488126888df72c9b7ea056b1fa50b99e75f7e52a`  
		Last Modified: Thu, 29 Oct 2026 20:06:51 GMT  
		Size: 20.1 MB (20132711 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e8718fc4ff14fdd84c4510c08f188e6d4565421ce2a7a9d0136a7d195333cd3`  
		Last Modified: Thu, 29 Oct 2026 20:06:50 GMT  
		Size: 4.5 MB (4515215 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:446e62d6b15c9ca2e15a187bc0536d7fc24ed16700027e71dad5323eea4791cd`  
		Last Modified: Thu, 29 Oct 2026 20:06:50 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:lein-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:ab72a3404bb4fa393a8b2adb9dc7403932420267bf4cb004e6abea949bd1bb62
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4276919 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:68fecd556f6b8c97d1ce71699698cf980db2d44d9684278a871059509b33a891`

```dockerfile
```

-	Layers:
	-	`sha256:2f957a797506ecd3d034644df43d56a5482eb01c2010e0d067b7f25c1de0b31f`  
		Last Modified: Thu, 29 Oct 2026 20:06:50 GMT  
		Size: 4.3 MB (4257290 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:88fb75b552a5f3702b806034f3ec897bd5ad1570cb0a9f055df6acda4c77b4a7`  
		Last Modified: Thu, 29 Oct 2026 20:06:50 GMT  
		Size: 19.6 KB (19629 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:lein-bookworm` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:dcaee9dc73033be10bb73c5744aecebc2f9dd534556aa69edd63c07b071a247b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **164.4 MB (164423213 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f7c9ecfe1a72e827835e4c67e2b490f7f351f7ae3256600271293018526f6d6d`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793059200'
# Thu, 29 Oct 2026 20:05:57 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 29 Oct 2026 20:05:57 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 29 Oct 2026 20:05:57 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 29 Oct 2026 20:05:57 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 29 Oct 2026 20:05:57 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 29 Oct 2026 20:05:57 GMT
WORKDIR /tmp
# Thu, 29 Oct 2026 20:07:08 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 29 Oct 2026 20:07:08 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 29 Oct 2026 20:07:08 GMT
ENV LEIN_ROOT=1
# Thu, 29 Oct 2026 20:07:09 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 29 Oct 2026 20:07:09 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 29 Oct 2026 20:07:09 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 29 Oct 2026 20:07:09 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:9e2782a4701b518d11b63dd3dedcfe1338e448f72cbf5353e854f2501ffd5e62`  
		Last Modified: Wed, 28 Oct 2026 00:10:21 GMT  
		Size: 48.4 MB (48405170 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:adf6d2c782d2e9a08769e28d1cb2c0e507fa81063d45f43ed2ca398e210a847f`  
		Last Modified: Thu, 29 Oct 2026 20:07:29 GMT  
		Size: 91.5 MB (91525570 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:613d00e291dbb11fa63271d234da21cb4398ac6f29e075101a101f0e4196883f`  
		Last Modified: Thu, 29 Oct 2026 20:07:27 GMT  
		Size: 20.0 MB (19976856 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f8f6e8da630a41be17630b240a106590779aa197331658b3640343fb023ed4b`  
		Last Modified: Thu, 29 Oct 2026 20:07:27 GMT  
		Size: 4.5 MB (4515187 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9520ac4aecf5ef60cfaf0cd5252a9165d167c04949e91da352e68b64cc2d938f`  
		Last Modified: Thu, 29 Oct 2026 20:07:26 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:lein-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:b8817f1bcb0534b67b7b2b29f9c44326f8b5ee0de00fbd05b8bc75bb046e4562
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4276796 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e6cb323cc3686a2c5ec03c03d74953816f0d8b9555239ec9f5f9ffc78ca8cc3b`

```dockerfile
```

-	Layers:
	-	`sha256:d7a8f68cee48c7914d84a23f7d1193820365c9fef88bd94afced1bc9d35bb6cd`  
		Last Modified: Thu, 29 Oct 2026 20:07:27 GMT  
		Size: 4.3 MB (4256974 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:052c7365751cfac999f94ffd5ebe040678f03692d98e7fde8fbecbdf43783231`  
		Last Modified: Thu, 29 Oct 2026 20:07:26 GMT  
		Size: 19.8 KB (19822 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:lein-bookworm` - linux; ppc64le

```console
$ docker pull clojure@sha256:3df5c75d4840dc264d06f453aaf676f38c75dfe1f7965589ffad1671e2deaffc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.4 MB (167350968 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e2ce51f160e078c959ba923473e343bb9c500ddeb4bb024a273df92cdc8b4ef`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1793059200'
# Thu, 29 Oct 2026 20:24:06 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 29 Oct 2026 20:24:06 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 29 Oct 2026 20:24:06 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 29 Oct 2026 20:24:06 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 29 Oct 2026 20:24:06 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 29 Oct 2026 20:24:07 GMT
WORKDIR /tmp
# Thu, 29 Oct 2026 20:27:38 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 29 Oct 2026 20:27:38 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 29 Oct 2026 20:27:38 GMT
ENV LEIN_ROOT=1
# Thu, 29 Oct 2026 20:27:42 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 29 Oct 2026 20:29:44 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 29 Oct 2026 20:29:44 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 29 Oct 2026 20:29:44 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:76d39433e5f7ff3fe5badf80d81523262cac841a13ec65f6dee0fceb621f6b0f`  
		Last Modified: Wed, 28 Oct 2026 00:20:21 GMT  
		Size: 52.4 MB (52366307 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c5412d3cceb0b365d7d52fcdf1d85bc427c038b51388bfd312d83464dc78689`  
		Last Modified: Thu, 29 Oct 2026 20:29:07 GMT  
		Size: 90.1 MB (90111681 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:635d7ae62f1ce411db08c543d50ca4db1e6592196c598032f6ec360e2a6dd1fa`  
		Last Modified: Thu, 29 Oct 2026 20:29:04 GMT  
		Size: 20.4 MB (20357335 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:731c22d8caa9d2653c9944fc8a7ce40734685b703e7bf8505fa207b5ed13fd55`  
		Last Modified: Thu, 29 Oct 2026 20:29:03 GMT  
		Size: 4.5 MB (4515216 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0750f301da1a803b76a0ecebe728885f75f8a95a5ba952ee7cfa2583cd25b541`  
		Last Modified: Thu, 29 Oct 2026 20:30:03 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:lein-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:5acbe7af009025fdcb9aa437ab5e865981387d7526887767de3d5f9cf917fb2b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4260347 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ae5a60e881c527a04435e13559e5f8df8f85fe63bddbc9d9958d8afcca0d19b`

```dockerfile
```

-	Layers:
	-	`sha256:e45d3fa95d71dbba6865a81b2010b5ec681b4b0498bbf2f012343ff599dc184f`  
		Last Modified: Thu, 29 Oct 2026 20:30:03 GMT  
		Size: 4.2 MB (4240638 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0a811f2453a10e7a5e5ed6a9c2213b22ce001bd5bf3313c8c4ca2d52235bcc0e`  
		Last Modified: Thu, 29 Oct 2026 20:30:03 GMT  
		Size: 19.7 KB (19709 bytes)  
		MIME: application/vnd.in-toto+json
