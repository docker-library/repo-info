## `clojure:temurin-25-lein-bookworm`

```console
$ docker pull clojure@sha256:40c7a5a3d959369357cfef171958c0545c5f69872bb526c0698cfed5fecb7121
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-25-lein-bookworm` - linux; amd64

```console
$ docker pull clojure@sha256:e94dbe8c8bfda0282e2428c340d157b248e21b607efeca08d9514ed3ec1e848c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **165.8 MB (165773917 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:656f6a1ac76260436d53e0f5b1fc993c28fc33df938b5b55c21ebdb308eb4177`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 08:10:07 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 05 Nov 2026 08:10:07 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 05 Nov 2026 08:10:07 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 08:10:07 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 05 Nov 2026 08:10:07 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 05 Nov 2026 08:10:07 GMT
WORKDIR /tmp
# Thu, 05 Nov 2026 08:11:13 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 05 Nov 2026 08:11:13 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 05 Nov 2026 08:11:13 GMT
ENV LEIN_ROOT=1
# Thu, 05 Nov 2026 08:11:14 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 05 Nov 2026 08:11:14 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 05 Nov 2026 08:11:14 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 05 Nov 2026 08:11:14 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:69245854ad5855991d16224f6abf55855d2d73922785206adea9c5c5988434a0`  
		Last Modified: Thu, 05 Nov 2026 06:15:52 GMT  
		Size: 48.5 MB (48526483 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:79d8fefc9d2996c9c7f2bd64e6513fc067879d0e1460e4afe7f3af68bcd72e23`  
		Last Modified: Thu, 05 Nov 2026 08:11:32 GMT  
		Size: 92.6 MB (92598929 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61eff2d9aad2a8b84cf04641e409e05c0a0988292f92ed7a22402ad854979810`  
		Last Modified: Thu, 05 Nov 2026 08:11:31 GMT  
		Size: 20.1 MB (20132886 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:195a6529af437f48adcd82deac19f5c41bd1d8caeacb70915e6ba065c9ad26b3`  
		Last Modified: Thu, 05 Nov 2026 08:11:30 GMT  
		Size: 4.5 MB (4515189 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e07c2c5e62c8712556ac9c7560abcbc8f4af11b29738dff1deacfd9892a6f16`  
		Last Modified: Thu, 05 Nov 2026 08:11:30 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-lein-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:72109c9c192f33f45f94f4db4dab91a9a173132f5b7c999cd0a5ae57514c27a7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4276919 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b28c72565d3c60d9bbad3a865afae9c34a567b365b95cf7e83e234910fae847`

```dockerfile
```

-	Layers:
	-	`sha256:e8b53a3cd8550115be75114afdd384a3918158801d6873044b7efa1e572c42f5`  
		Last Modified: Thu, 05 Nov 2026 08:11:30 GMT  
		Size: 4.3 MB (4257290 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:45015204c663db68ee259dfd965501da33e25875ae8a9611262ff0b1a29674e4`  
		Last Modified: Thu, 05 Nov 2026 08:11:30 GMT  
		Size: 19.6 KB (19629 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-lein-bookworm` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:7854d494bb3fd6c61c6759bbd370a9082ce0411433c10493a3b8a45702fdf912
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **164.4 MB (164420728 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14330bf2e2787c9ff7aa5c4a9c0defc0827abb1948e50805524e3ed03c7570a0`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 08:19:31 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 05 Nov 2026 08:19:31 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 05 Nov 2026 08:19:31 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 08:19:31 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 05 Nov 2026 08:19:31 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 05 Nov 2026 08:19:31 GMT
WORKDIR /tmp
# Thu, 05 Nov 2026 08:20:41 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 05 Nov 2026 08:20:41 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 05 Nov 2026 08:20:41 GMT
ENV LEIN_ROOT=1
# Thu, 05 Nov 2026 08:20:43 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 05 Nov 2026 08:20:43 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 05 Nov 2026 08:20:43 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 05 Nov 2026 08:20:43 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:f59e747f549eda321051637e213896378a19033924e1bfa7ae23a6572729c23c`  
		Last Modified: Thu, 05 Nov 2026 06:15:49 GMT  
		Size: 48.4 MB (48412454 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06e133db4df1251e477e2f389a10a6f59a2f0385e945b4aba0f54f22ed82b8e1`  
		Last Modified: Thu, 05 Nov 2026 08:21:02 GMT  
		Size: 91.5 MB (91525601 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b191b6bcb8a96420e4bc875a34a43597db439984473e2f23421ac02ec62bf4dc`  
		Last Modified: Thu, 05 Nov 2026 08:21:01 GMT  
		Size: 20.0 MB (19967033 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7dc5d0c4881daa91d4e5d6be94f71332e88fd6dfc0d164c0bf83254d5c81d8b9`  
		Last Modified: Thu, 05 Nov 2026 08:21:00 GMT  
		Size: 4.5 MB (4515212 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e83328043fc53c2b6c554de04a11ba26a9a23ef0a6c315b9d511011b5dcddb1`  
		Last Modified: Thu, 05 Nov 2026 08:21:00 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-lein-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:8da3017c4001e3910b672701582673f509b2b4c94b1ef1230cdc108f6fbb7c60
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4276796 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c99e7faf21f1a98ba6c525067148456b473da6d664eda6eb861fdcb51e3d2331`

```dockerfile
```

-	Layers:
	-	`sha256:17a516eb2e1a27e6e87f4d4c23bc1f074aba4ae1e56b651a1df9416f1adc1f62`  
		Last Modified: Thu, 05 Nov 2026 08:21:00 GMT  
		Size: 4.3 MB (4256974 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8ceea15e7090521b72574a803782a8a600536c088e5ab38dfa1bf6c5aed3948b`  
		Last Modified: Thu, 05 Nov 2026 08:21:00 GMT  
		Size: 19.8 KB (19822 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-lein-bookworm` - linux; ppc64le

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

### `clojure:temurin-25-lein-bookworm` - unknown; unknown

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
