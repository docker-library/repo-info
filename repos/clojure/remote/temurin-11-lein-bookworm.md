## `clojure:temurin-11-lein-bookworm`

```console
$ docker pull clojure@sha256:1d8947d14ab0228f1483c46e792732ea284fb55df0fc863c03e82efbbd32aed5
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-11-lein-bookworm` - linux; amd64

```console
$ docker pull clojure@sha256:4c4e5e3959ea73ad8bab26937c2a5d2f8e4bcb4318b85f0cc69d1138e9c0793a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **219.0 MB (219034435 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:94677eb410a50cb080adb6a1d3974a953c8b1634b74c1e17e8a494f91e43f822`
-	Default Command: `["lein","repl"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1792531975'
# Tue, 27 Oct 2026 00:46:31 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 27 Oct 2026 00:46:31 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 27 Oct 2026 00:46:31 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 27 Oct 2026 00:46:31 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 27 Oct 2026 00:46:31 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 27 Oct 2026 00:46:31 GMT
WORKDIR /tmp
# Tue, 27 Oct 2026 00:47:42 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 27 Oct 2026 00:47:42 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 27 Oct 2026 00:47:42 GMT
ENV LEIN_ROOT=1
# Tue, 27 Oct 2026 00:47:44 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 27 Oct 2026 00:47:44 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:8a051559ff62acdfa1af9916c3c67673d946bb71f81cb8f30c565fa647cb6a77`  
		Last Modified: Tue, 20 Oct 2026 23:30:05 GMT  
		Size: 48.5 MB (48522084 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f0849ff66c574ef309303d5a05d76945502615d8a45d8644648caaa055abf2a3`  
		Last Modified: Tue, 27 Oct 2026 00:48:04 GMT  
		Size: 145.9 MB (145864297 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e0863a9f411b3b3a6efafa3c9742c88e14087d1d21bdfcef0591cf71abf8278`  
		Last Modified: Tue, 27 Oct 2026 00:48:01 GMT  
		Size: 20.1 MB (20132802 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7542e31873ff58e9b0dfd413a44b7ab8c86ebbc396f78200cdf7d46fab6a49bb`  
		Last Modified: Tue, 27 Oct 2026 00:48:01 GMT  
		Size: 4.5 MB (4515220 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:09ed5b470b9d82b4ebcec42de38e4f5dcb99fa30c00f77d12de0df6acff99641
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4323268 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:62f83e191bf8d631b00faed7c8f3689ea54e87465d3278a2adcf1f3543440f5e`

```dockerfile
```

-	Layers:
	-	`sha256:7215ff93d69f78a3aeff71499ae1237c77a24fe48149c85d9d09437a0c548803`  
		Last Modified: Tue, 27 Oct 2026 00:48:00 GMT  
		Size: 4.3 MB (4307520 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1e5f5360de5636e2593fec52f3c355e71abbbde667a2bbdda60143f995ad0da2`  
		Last Modified: Tue, 27 Oct 2026 00:48:00 GMT  
		Size: 15.7 KB (15748 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-lein-bookworm` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:9e9e848ac0d68152cb6a1af7adc4d3069c02f7a97181a9cce61d9dc2cc01a829
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **215.5 MB (215471579 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ae50a0fe834c20872ade0a8c79aeac511eec69ba49a60620350be18cc17bbc9`
-	Default Command: `["lein","repl"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1792531975'
# Tue, 27 Oct 2026 00:46:23 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 27 Oct 2026 00:46:23 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 27 Oct 2026 00:46:23 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 27 Oct 2026 00:46:23 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 27 Oct 2026 00:46:23 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 27 Oct 2026 00:46:23 GMT
WORKDIR /tmp
# Tue, 27 Oct 2026 00:47:35 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 27 Oct 2026 00:47:35 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 27 Oct 2026 00:47:35 GMT
ENV LEIN_ROOT=1
# Tue, 27 Oct 2026 00:47:37 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 27 Oct 2026 00:47:37 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:a97cb698362f4b23d085b953f3106766a2137816fe5e17a99fdc3e48bd37e810`  
		Last Modified: Tue, 20 Oct 2026 23:29:54 GMT  
		Size: 48.4 MB (48403111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e9d03c6434b8f777796650bb729b75b809ed881e4a7bc99ef75971441ea0e69`  
		Last Modified: Tue, 27 Oct 2026 00:47:58 GMT  
		Size: 142.6 MB (142576571 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f4bdc01986fe90d345ca63c8bd2cd41256524623dbabdb8efb4658359c2e447`  
		Last Modified: Tue, 27 Oct 2026 00:47:55 GMT  
		Size: 20.0 MB (19976643 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aaaaf23bf8d8124c10178c62afafe9b8d80debf2a36994de559cc53bfd091182`  
		Last Modified: Tue, 27 Oct 2026 00:47:55 GMT  
		Size: 4.5 MB (4515222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:ec075d098a0c568bc9bfda07954f7bd490be6d71da3716fa76c53b8a142403ac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4323621 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:99b6922197f91eb447df8dd7310eb7974e648aefc97c6e2ef21c491c38213dd8`

```dockerfile
```

-	Layers:
	-	`sha256:dab5361042044e1106e108210394500f5ddb83776aa3e226a9847c4682a91690`  
		Last Modified: Tue, 27 Oct 2026 00:47:55 GMT  
		Size: 4.3 MB (4307753 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:982f2dfb3f0d7c15ddd861fe44d8367962a103e1f38b792cfeb0c9871375fff9`  
		Last Modified: Tue, 27 Oct 2026 00:47:54 GMT  
		Size: 15.9 KB (15868 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-lein-bookworm` - linux; ppc64le

```console
$ docker pull clojure@sha256:6bdfb2ab457a58de86dd630d2f48a00390ce39d1068967e73742c1e9f04ee276
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **210.3 MB (210331920 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:780c5fd0bb60f82b7d4d95286bd2bbb7abedf1504b0c99d81084b858443d4809`
-	Default Command: `["lein","repl"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 09:58:09 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 21 Oct 2026 09:58:09 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 21 Oct 2026 09:58:09 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 09:58:09 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 21 Oct 2026 09:58:09 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 21 Oct 2026 09:58:09 GMT
WORKDIR /tmp
# Wed, 21 Oct 2026 10:02:51 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 21 Oct 2026 10:02:51 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 21 Oct 2026 10:02:51 GMT
ENV LEIN_ROOT=1
# Wed, 21 Oct 2026 10:02:57 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 21 Oct 2026 10:02:57 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:0d8f63583ffe9dea650eb3c2d930ac17764dc3edd73dcc6becb0a476d51e6619`  
		Last Modified: Tue, 20 Oct 2026 23:30:07 GMT  
		Size: 52.4 MB (52364741 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4acc757fca417d1cfc1b6862285d3cd733d26064b6cc3a074bc6ba8cdc16ae6`  
		Last Modified: Wed, 21 Oct 2026 10:03:59 GMT  
		Size: 133.1 MB (133095132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:940166f37fee849db58073c47d3a4de974c049ff68b77d6359bb6e5f1512c736`  
		Last Modified: Wed, 21 Oct 2026 10:03:56 GMT  
		Size: 20.4 MB (20356792 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:63f289b337686b9cd857e5b1df4881664be866a3e201b3ed47de0df98e7f740c`  
		Last Modified: Wed, 21 Oct 2026 10:03:55 GMT  
		Size: 4.5 MB (4515223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:2eb7d12c7f3212682e13977c69550f1fe98ce399cd18228887de68fc09e532bd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4324558 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e442ba87b56d3f5d63d95449780d856d1e2a06ad3d12b55e58a56420c4ba2074`

```dockerfile
```

-	Layers:
	-	`sha256:d1c0c87147627b8a6f589d9a0b51ac88c542ec09b6c62208a9d87a74c41f4e51`  
		Last Modified: Wed, 21 Oct 2026 10:03:55 GMT  
		Size: 4.3 MB (4308766 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:53a096833479421ce0be007c7bda17ae7223b555a45a3c25211716e77d3311e4`  
		Last Modified: Wed, 21 Oct 2026 10:03:54 GMT  
		Size: 15.8 KB (15792 bytes)  
		MIME: application/vnd.in-toto+json
