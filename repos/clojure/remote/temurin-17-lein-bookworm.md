## `clojure:temurin-17-lein-bookworm`

```console
$ docker pull clojure@sha256:66a008ee8501748fd6f828d4da3302f822e8ea8e808d2a1cd2281246ace0b451
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-17-lein-bookworm` - linux; amd64

```console
$ docker pull clojure@sha256:ca84b041dc28cf2ba9f0d71ece412e837835d9fdde09be249ef16651afe5b6c4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **219.3 MB (219258959 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b26252e957978fa5c61261b4e8f17a2a16c533dac097f5ac1f4e5ea09d6f92c1`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793059200'
# Tue, 03 Nov 2026 22:17:52 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 03 Nov 2026 22:17:52 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 03 Nov 2026 22:17:52 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 03 Nov 2026 22:17:52 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 03 Nov 2026 22:17:52 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 03 Nov 2026 22:17:52 GMT
WORKDIR /tmp
# Tue, 03 Nov 2026 22:19:14 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 03 Nov 2026 22:19:14 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 03 Nov 2026 22:19:14 GMT
ENV LEIN_ROOT=1
# Tue, 03 Nov 2026 22:19:15 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 03 Nov 2026 22:19:15 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 03 Nov 2026 22:19:15 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 03 Nov 2026 22:19:15 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:a4aa977c0d0eb2336dad68941e458308ebf32a717c19ea72e475b9eda8035506`  
		Last Modified: Wed, 28 Oct 2026 00:10:13 GMT  
		Size: 48.5 MB (48524552 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f97e971ca2c546e38149682386413f12e0549e53bf756872e420dde676aa5094`  
		Last Modified: Tue, 03 Nov 2026 22:19:35 GMT  
		Size: 146.1 MB (146086179 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b65335030e27b3b6d15103903f82e09ae4465d5995d73adfa90be117ec9cf85b`  
		Last Modified: Tue, 03 Nov 2026 22:19:32 GMT  
		Size: 20.1 MB (20132618 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:edc8e15a029c2d406fb719eed1c92b71154b0653106a4952c7fdcbdec5b65209`  
		Last Modified: Tue, 03 Nov 2026 22:19:31 GMT  
		Size: 4.5 MB (4515180 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c60d7bf9d031567b0acee29a0eda222b74505c78c95c1982a8d59c1a6c7f33d2`  
		Last Modified: Tue, 03 Nov 2026 22:19:31 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:094b46cbf49b50beefe3f1fb06e890a85a9e9f7a469536422867a0a542651901
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4305734 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e4787329bd6d26e0be701cd64e00d1c169882ef5ccd110d6c66c1b06f5cd893c`

```dockerfile
```

-	Layers:
	-	`sha256:363334b0dfe7238dda16e8f3b21d87072bc3cb5a98f0605f6a2b98ae12b7ce5c`  
		Last Modified: Tue, 03 Nov 2026 22:19:31 GMT  
		Size: 4.3 MB (4287996 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:caf5c51b1865d8937bb4456ba246f406b7862aecc1b56e229d16d0fb920573f2`  
		Last Modified: Tue, 03 Nov 2026 22:19:31 GMT  
		Size: 17.7 KB (17738 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-lein-bookworm` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:60316e286494febf74f1c1fc47efa50860240f66675c3aee7a63a4e767093690
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **217.9 MB (217855287 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:84261b4fdb71dfc75fc6a480c9a24ab1bee85c394b1f224dc95865c615506209`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793059200'
# Tue, 03 Nov 2026 22:17:27 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 03 Nov 2026 22:17:27 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 03 Nov 2026 22:17:27 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 03 Nov 2026 22:17:27 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 03 Nov 2026 22:17:27 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 03 Nov 2026 22:17:27 GMT
WORKDIR /tmp
# Tue, 03 Nov 2026 22:18:51 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 03 Nov 2026 22:18:51 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 03 Nov 2026 22:18:51 GMT
ENV LEIN_ROOT=1
# Tue, 03 Nov 2026 22:18:52 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 03 Nov 2026 22:18:53 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 03 Nov 2026 22:18:53 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 03 Nov 2026 22:18:53 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:9e2782a4701b518d11b63dd3dedcfe1338e448f72cbf5353e854f2501ffd5e62`  
		Last Modified: Wed, 28 Oct 2026 00:10:21 GMT  
		Size: 48.4 MB (48405170 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80f5b1b24b2ed9464f89c4dbef59a207d2f4e7b4bd72ce9ce08c6e677115d12e`  
		Last Modified: Tue, 03 Nov 2026 22:19:14 GMT  
		Size: 145.0 MB (144957183 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ec31f4bf1174a234206beb992b6ebfc62bf984ed194d4cb91a3f001d64f903a`  
		Last Modified: Tue, 03 Nov 2026 22:19:11 GMT  
		Size: 20.0 MB (19977331 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c5a110b69f4e0611623a7f3fcf3b7bf073f0e29572139b8230de67f48a7e443a`  
		Last Modified: Tue, 03 Nov 2026 22:19:10 GMT  
		Size: 4.5 MB (4515172 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:708ad3a8e098b46cafe796164c8d241da176f9d8c5bdbbd7311922ad187d22a3`  
		Last Modified: Tue, 03 Nov 2026 22:19:10 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:8ad5a3daeb4f367f1bf95f5dae212299fc86441400f8cc1d103cc2403409372a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4305470 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:30a9fad4c00958af3deb93194ac4566b6205624ba18a064f995e2b968c22f666`

```dockerfile
```

-	Layers:
	-	`sha256:056e7c0a005b9cb9afefbc45d3d91cc09e293975504a9a1749e951afd58e9264`  
		Last Modified: Tue, 03 Nov 2026 22:19:10 GMT  
		Size: 4.3 MB (4287611 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9bef9b7813fa3ab54d2448642650a94aa8841992b607f2f3094718f2a423dc52`  
		Last Modified: Tue, 03 Nov 2026 22:19:10 GMT  
		Size: 17.9 KB (17859 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-lein-bookworm` - linux; ppc64le

```console
$ docker pull clojure@sha256:08c1d9a68bedf787257cd61b3b17830755be7f758a5577e7aa918761b4ef97d3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **222.1 MB (222099204 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:59f87576e06610773c28fb4c0b6644abcb7b9467f1f40f684faff1aadb54f945`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1793059200'
# Tue, 03 Nov 2026 22:32:31 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 03 Nov 2026 22:32:31 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 03 Nov 2026 22:32:31 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 03 Nov 2026 22:32:31 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 03 Nov 2026 22:32:31 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 03 Nov 2026 22:32:32 GMT
WORKDIR /tmp
# Tue, 03 Nov 2026 22:36:08 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 03 Nov 2026 22:36:08 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 03 Nov 2026 22:36:08 GMT
ENV LEIN_ROOT=1
# Tue, 03 Nov 2026 22:36:14 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 03 Nov 2026 22:36:14 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 03 Nov 2026 22:36:14 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 03 Nov 2026 22:36:14 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:76d39433e5f7ff3fe5badf80d81523262cac841a13ec65f6dee0fceb621f6b0f`  
		Last Modified: Wed, 28 Oct 2026 00:20:21 GMT  
		Size: 52.4 MB (52366307 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e6913706a30281fb9bfb0333cf0fba1489b1c88945fb9523758d02af00a9ed4`  
		Last Modified: Tue, 03 Nov 2026 22:37:03 GMT  
		Size: 144.9 MB (144860486 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee3ee51403fefa4d859f60f9a79cb4de683c5d73b8db50b84ce859c4d727c821`  
		Last Modified: Tue, 03 Nov 2026 22:37:01 GMT  
		Size: 20.4 MB (20356743 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:595335dbb6342acd6bb193827d8ff6a2df7a6be44670c3cc6816a5de398e4683`  
		Last Modified: Tue, 03 Nov 2026 22:37:00 GMT  
		Size: 4.5 MB (4515237 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b80fe14e19d89f922e6a9137b7298fcecac13ebb1a7f249fd4662554c791e742`  
		Last Modified: Tue, 03 Nov 2026 22:36:59 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:c4ab3497e7430e762fe70b83cd67635b7daba7f0272c9783242eb11601767bf5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4306392 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d4b47e697ccc34316d73ab8c45990910577b614d8332676df60f44ae746cc1a`

```dockerfile
```

-	Layers:
	-	`sha256:5fc574116198f5f24e39229f58a9133a99362ab56bfa699be5b16c4f23ac638f`  
		Last Modified: Tue, 03 Nov 2026 22:37:00 GMT  
		Size: 4.3 MB (4288611 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e4524075d87bbdcef264b62332e295cd6f0e609e07d1f54b9d9ddcbdd56b4c93`  
		Last Modified: Tue, 03 Nov 2026 22:36:59 GMT  
		Size: 17.8 KB (17781 bytes)  
		MIME: application/vnd.in-toto+json
