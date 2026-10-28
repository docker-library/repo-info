## `clojure:temurin-11-lein-2.13.0-bookworm`

```console
$ docker pull clojure@sha256:b536fa0283db907b442ee5acd082bae0bd14596db8213cf348b4595a27cf08ae
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-11-lein-2.13.0-bookworm` - linux; amd64

```console
$ docker pull clojure@sha256:bf2cdd3ee3061ec6a60b7590704a84caa1c63bf0215d4263101fdfecd310a70c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **219.0 MB (219036796 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5d3d6d92ea0e0a459616d373b6a25db74578f5bbe051403f0300ae732e81b499`
-	Default Command: `["lein","repl"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 02:10:04 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 28 Oct 2026 02:10:04 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 28 Oct 2026 02:10:04 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 02:10:04 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 28 Oct 2026 02:10:04 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 28 Oct 2026 02:10:04 GMT
WORKDIR /tmp
# Wed, 28 Oct 2026 02:11:11 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 28 Oct 2026 02:11:11 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 28 Oct 2026 02:11:11 GMT
ENV LEIN_ROOT=1
# Wed, 28 Oct 2026 02:11:12 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 28 Oct 2026 02:11:12 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:a4aa977c0d0eb2336dad68941e458308ebf32a717c19ea72e475b9eda8035506`  
		Last Modified: Wed, 28 Oct 2026 00:10:13 GMT  
		Size: 48.5 MB (48524552 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50f83623a39a0b1347e91305517eda4420bfde57d84202a6d47b1e198f6f713d`  
		Last Modified: Wed, 28 Oct 2026 02:11:32 GMT  
		Size: 145.9 MB (145864299 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b30836ffb5f94a7f0afc1b03cf1a6d5367e5d4910229aa4d6a6d298c6fa5f80`  
		Last Modified: Wed, 28 Oct 2026 02:11:29 GMT  
		Size: 20.1 MB (20132694 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee271cfa3b4affd34f9ff3fca54b2bed504e7dbf122b5e0c32bf63f3b51bac83`  
		Last Modified: Wed, 28 Oct 2026 02:11:29 GMT  
		Size: 4.5 MB (4515219 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-2.13.0-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:116bfcad6901b4366ffa94cf056307f2b50fc1243ed759027442bd2db646b539
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4323268 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:35363cbe94a4d9745f17ed6ee0ecdb0f265235ed28c53ee1cebe81b09f9c23a8`

```dockerfile
```

-	Layers:
	-	`sha256:ff7542e9844b5308e8863e8e528ad7f00d2df2999a275a33d37211c4ba5f5ac1`  
		Last Modified: Wed, 28 Oct 2026 02:11:29 GMT  
		Size: 4.3 MB (4307520 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:78200288d2904530616a20117f737c46d7cdc306ad55604e16e69fbfb4a24e25`  
		Last Modified: Wed, 28 Oct 2026 02:11:28 GMT  
		Size: 15.7 KB (15748 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-lein-2.13.0-bookworm` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:180b9f7428bde45450d7204d5f78a3121f71c36f3140866accd5ea1c251e84f3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **215.5 MB (215473292 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:235d36a1260a5822273bf4dfaf457c1bcf0517e713a9fd83a55246816d9479cb`
-	Default Command: `["lein","repl"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 02:16:50 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 28 Oct 2026 02:16:50 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 28 Oct 2026 02:16:50 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 02:16:50 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 28 Oct 2026 02:16:50 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 28 Oct 2026 02:16:50 GMT
WORKDIR /tmp
# Wed, 28 Oct 2026 02:18:05 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 28 Oct 2026 02:18:05 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 28 Oct 2026 02:18:05 GMT
ENV LEIN_ROOT=1
# Wed, 28 Oct 2026 02:18:08 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 28 Oct 2026 02:18:08 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:9e2782a4701b518d11b63dd3dedcfe1338e448f72cbf5353e854f2501ffd5e62`  
		Last Modified: Wed, 28 Oct 2026 00:10:21 GMT  
		Size: 48.4 MB (48405170 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f9ba058a56e7e2c3cb2fdf797dc617d3f53617f420134aef6dd2593a97db4cd`  
		Last Modified: Wed, 28 Oct 2026 02:18:27 GMT  
		Size: 142.6 MB (142576602 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33a93030c260a365b90167f2a859f40dfa62f78bf8ebab6dca3cefabe232d0a3`  
		Last Modified: Wed, 28 Oct 2026 02:18:25 GMT  
		Size: 20.0 MB (19976286 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:845876455d6b9f442c5662ddda6e2dca54235989f49635fabb0c935cdcfedd3f`  
		Last Modified: Wed, 28 Oct 2026 02:18:25 GMT  
		Size: 4.5 MB (4515202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-2.13.0-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:768f1fe3fe1c50e8e5f5a0dc606109990b90bbe063641106ae04cd3953fbc4c4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4323622 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:34ebc849e1d6feaa925533660a304fb61e1c0c4b21ab228140a20c0ddec17948`

```dockerfile
```

-	Layers:
	-	`sha256:ecbd9572c71d4c2293dee0919139d36868eb515fb9313b6e69a0d2e1a320f600`  
		Last Modified: Wed, 28 Oct 2026 02:18:25 GMT  
		Size: 4.3 MB (4307753 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:41788d243f0a437335a5262cca7f66008606bfc7d413c85ef5a02e5f3624ae25`  
		Last Modified: Wed, 28 Oct 2026 02:18:24 GMT  
		Size: 15.9 KB (15869 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-lein-2.13.0-bookworm` - linux; ppc64le

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

### `clojure:temurin-11-lein-2.13.0-bookworm` - unknown; unknown

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
