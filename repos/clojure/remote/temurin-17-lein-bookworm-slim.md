## `clojure:temurin-17-lein-bookworm-slim`

```console
$ docker pull clojure@sha256:4f269fe377b3505a90b912b69744e7d5373d8d0f1a4603bee972420affc93928
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-17-lein-bookworm-slim` - linux; amd64

```console
$ docker pull clojure@sha256:03c26a393e85d7771a1e9dfa84d90b71babb63485919821bb1bb8c6718a241fa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **199.0 MB (198966811 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6649dba8e0d1016f1d6163df77350c8acf858cfc8eb72e3e14eb930ac8faa5bd`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 02:12:07 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 06 Oct 2026 02:12:07 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 06 Oct 2026 02:12:07 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 02:12:07 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 06 Oct 2026 02:12:07 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 06 Oct 2026 02:12:07 GMT
WORKDIR /tmp
# Tue, 06 Oct 2026 02:13:23 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 06 Oct 2026 02:13:23 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 06 Oct 2026 02:13:23 GMT
ENV LEIN_ROOT=1
# Tue, 06 Oct 2026 02:13:24 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 06 Oct 2026 02:13:24 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 06 Oct 2026 02:13:24 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 06 Oct 2026 02:13:24 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:7fd1ebe418b5079d4aa36f416af9b143d127bc75b0155d71cb5fd559b5e04d39`  
		Last Modified: Tue, 06 Oct 2026 00:13:34 GMT  
		Size: 28.2 MB (28249323 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ccf4152402a91b113637d2aa1a8533870568bf34a65c3740fde0aa6264efbe1`  
		Last Modified: Tue, 06 Oct 2026 02:13:44 GMT  
		Size: 145.8 MB (145825478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19ef4570674cd37422d6f9e57fb8f2b5bb8f8f896b478d51721fc94aa3898b62`  
		Last Modified: Tue, 06 Oct 2026 02:13:41 GMT  
		Size: 20.4 MB (20376396 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:367e9302a2b0a783b4504a5bb1d467920fd43d77164c04d7bee72d957034a142`  
		Last Modified: Tue, 06 Oct 2026 02:13:41 GMT  
		Size: 4.5 MB (4515185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:267aba6bbdce183ee0bdbc0191ead4a265d91d2ae766b696ea1b601a9306088e`  
		Last Modified: Tue, 06 Oct 2026 02:13:40 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:fcc3001b28dbe087b618991ff6da62a8afc831a2d4392f1dceccdac18235b5a1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2755391 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aad3319679b7a787a177675d8456f48f9217ed564f96502d9304d39205853910`

```dockerfile
```

-	Layers:
	-	`sha256:e2a71d48fa8a5d872e23a448c056a23470081fd41ed53794e7e5c7930114f5ad`  
		Last Modified: Tue, 06 Oct 2026 02:13:41 GMT  
		Size: 2.7 MB (2737618 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:edc81d4bcbfd5fbfa558a2c0da9a31b5b674556c45336a20bfad971580929dd6`  
		Last Modified: Tue, 06 Oct 2026 02:13:40 GMT  
		Size: 17.8 KB (17773 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-lein-bookworm-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:8ae70b17b15d1cec2fe5c006fcbbb88b4d3783000cf7e5be8877341fa7086008
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **197.5 MB (197457229 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:42f1981afa5d829a0974459a4aee2d18966067cf0af4aa1d4360e76df5bd2fdc`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 10:52:42 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 06 Oct 2026 10:52:42 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 06 Oct 2026 10:52:42 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 10:52:42 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 06 Oct 2026 10:52:42 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 06 Oct 2026 10:52:42 GMT
WORKDIR /tmp
# Tue, 06 Oct 2026 10:53:52 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 06 Oct 2026 10:53:52 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 06 Oct 2026 10:53:52 GMT
ENV LEIN_ROOT=1
# Tue, 06 Oct 2026 10:53:54 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 06 Oct 2026 10:53:54 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 06 Oct 2026 10:53:54 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 06 Oct 2026 10:53:54 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:c75f989a229d12b2d2613a5997de9ff3546f664c22da9248720033a2410220f6`  
		Last Modified: Tue, 06 Oct 2026 00:13:08 GMT  
		Size: 28.1 MB (28137179 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f79dc445c043b1a892d1ab583b23f93a98d9dfc32f68fca92628f7564aef420`  
		Last Modified: Tue, 06 Oct 2026 10:54:14 GMT  
		Size: 144.6 MB (144648241 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f3b71624532f842052675c0d439bce6431f850d16a274b6e8d2b63e7658accf`  
		Last Modified: Tue, 06 Oct 2026 10:54:12 GMT  
		Size: 20.2 MB (20156184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40802611d4e1ff16835429d52a4c84f961f078bc26c04b3961f74578aeb55a32`  
		Last Modified: Tue, 06 Oct 2026 10:54:11 GMT  
		Size: 4.5 MB (4515195 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b22ef7f76003a803d9b4dc47b3db96575c5cb37ad8ca27d30903191df8b668ae`  
		Last Modified: Tue, 06 Oct 2026 10:54:11 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:45b0f7bc6d1d8fcab5073d406e44e40269ec41ea9c8b92a8ddc0bf55ea901d52
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2755127 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a61aad6abf5e21789e652570714084382557f9fac1dad6b7e6b8bbd53a9d3c9`

```dockerfile
```

-	Layers:
	-	`sha256:e27869f36bb478c568750337cd4380951d0905784bfa302a3904e370135439f9`  
		Last Modified: Tue, 06 Oct 2026 10:54:11 GMT  
		Size: 2.7 MB (2737233 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d8e0e5cedf83a8ded3f97e75f6f41e5ed4d3965bd336aef4d9f456270453e788`  
		Last Modified: Tue, 06 Oct 2026 10:54:11 GMT  
		Size: 17.9 KB (17894 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-lein-bookworm-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:85b5d7cd591d49e0d28e9f2996cc0e0a8c14bf5cf60edc00e6d8b7cfa61ed6f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **203.0 MB (203014790 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f97df8d572e024a88e6e7ecc954b267edb2456472d8ca6acf1719b127099aa40`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 10:01:36 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 06 Oct 2026 10:01:36 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 06 Oct 2026 10:01:36 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 10:01:36 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 06 Oct 2026 10:01:36 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 06 Oct 2026 10:01:42 GMT
WORKDIR /tmp
# Tue, 06 Oct 2026 10:04:39 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 06 Oct 2026 10:04:39 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 06 Oct 2026 10:04:39 GMT
ENV LEIN_ROOT=1
# Tue, 06 Oct 2026 10:04:43 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 06 Oct 2026 10:04:48 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 06 Oct 2026 10:04:48 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 06 Oct 2026 10:04:48 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:1f3f8c47175317b9e585f790a7a31d74fa5e58d183221b62e4cc6945ea188893`  
		Last Modified: Tue, 06 Oct 2026 00:12:11 GMT  
		Size: 32.1 MB (32092434 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51a3330add54adab18a22cd08383f7e4def1d22934544cb2baa835ed88e94414`  
		Last Modified: Tue, 06 Oct 2026 10:06:14 GMT  
		Size: 145.7 MB (145671490 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad7ab1647958235a3906ab1c477c34d3319d8fa4299ec02230a63a1441c73a62`  
		Last Modified: Tue, 06 Oct 2026 10:06:11 GMT  
		Size: 20.7 MB (20735207 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:566fa77722767b66b7bee6ed44f88faaa2f672fc1ca97027b75d2835dbc6bf76`  
		Last Modified: Tue, 06 Oct 2026 10:06:10 GMT  
		Size: 4.5 MB (4515230 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a2461e1dfbe0a9a7f8647cba391475fae6612a28fb38d356ebb01e29ec32516a`  
		Last Modified: Tue, 06 Oct 2026 10:06:10 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:3bd4626d73aac93e16d47ba548a0f21f8543691e7358396ddb81fa343693712c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2757267 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:84f27e72225c72091111cda7adb7e34fa60ebced16e5f2cf5833a36a819e07ef`

```dockerfile
```

-	Layers:
	-	`sha256:557f3b9e13b55cdda73bb7ec6621d3826b02f3c79ad8eb67347e8d9310b4a3d9`  
		Last Modified: Tue, 06 Oct 2026 10:06:10 GMT  
		Size: 2.7 MB (2739451 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:97b9f7870aeccb51e02cab4c2e73a742f7b28b4ebf8d3157207d7e9bbdba9322`  
		Last Modified: Tue, 06 Oct 2026 10:06:10 GMT  
		Size: 17.8 KB (17816 bytes)  
		MIME: application/vnd.in-toto+json
