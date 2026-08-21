## `clojure:temurin-21-lein-2.13.0-bullseye-slim`

```console
$ docker pull clojure@sha256:a03f97e939eb2900ee5823af9e3f2ae5dffc480616a0fcfefc4d86d34b4bf7c6
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clojure:temurin-21-lein-2.13.0-bullseye-slim` - linux; amd64

```console
$ docker pull clojure@sha256:f434c7de9ba717dd5c7ec500fc708ad2411983e76175f3b683cfa90dbd5621c6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **208.5 MB (208538620 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8cc60adad44e4999531f7ef5248ab90cde7afed4fcc5f9cb9875f77982f50cbb`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bullseye' '@1785715200'
# Fri, 21 Aug 2026 19:16:42 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 19:16:42 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 21 Aug 2026 19:16:42 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 19:16:42 GMT
ENV LEIN_VERSION=2.13.0
# Fri, 21 Aug 2026 19:16:42 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 21 Aug 2026 19:16:42 GMT
WORKDIR /tmp
# Fri, 21 Aug 2026 19:17:49 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Fri, 21 Aug 2026 19:17:49 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Fri, 21 Aug 2026 19:17:49 GMT
ENV LEIN_ROOT=1
# Fri, 21 Aug 2026 19:17:51 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Fri, 21 Aug 2026 19:17:51 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 21 Aug 2026 19:17:51 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 21 Aug 2026 19:17:51 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:ab75afe6a0f0027cc830f1ca4a2c484e7056871a1adf91bd3a0b73c6ffb517b1`  
		Last Modified: Tue, 04 Aug 2026 23:52:04 GMT  
		Size: 30.3 MB (30259620 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1357a2aa386175afd5df024fa62a99b935508c40cfaf23f46094db7247b0542`  
		Last Modified: Fri, 21 Aug 2026 19:18:11 GMT  
		Size: 158.1 MB (158120314 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3855ff4501d788d1bfb63f1d4d8f506a3ff1a1b3ae0abd445356d2273b9dea00`  
		Last Modified: Fri, 21 Aug 2026 19:18:09 GMT  
		Size: 15.6 MB (15643031 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dbf3b0f9556ff8d3e2b6a33b00a258231ffaee4b489500569ca6f1745e3b8a44`  
		Last Modified: Fri, 21 Aug 2026 19:18:08 GMT  
		Size: 4.5 MB (4515225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ed7914bc5d8d891462796cfd77d5cd2279f5e6d930b307275dbdda4185f29b2`  
		Last Modified: Fri, 21 Aug 2026 19:18:08 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-2.13.0-bullseye-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:222f0099acea3a73dda54308683e98f23ee545eb3b1290ba9b730d1374455a50
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 MB (3061938 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:03077fec24b77b57c690dfa25a1ac3cd14104b04d088120c9aa81233025ac51d`

```dockerfile
```

-	Layers:
	-	`sha256:70ba0209c148a9f914d318c40254350625e797313e7864a7b574985fd96d0043`  
		Last Modified: Fri, 21 Aug 2026 19:18:08 GMT  
		Size: 3.0 MB (3044165 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d835cef0999f4481c49a885935cdd63992fff2b09ad8ccb5adb75a6a4da3e257`  
		Last Modified: Fri, 21 Aug 2026 19:18:08 GMT  
		Size: 17.8 KB (17773 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-lein-2.13.0-bullseye-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:dd949fd140e07e89481debfca68c56402b1cfe4b75d44f031f9a8ad82e7ef73d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **205.3 MB (205297566 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa6b8d4d741c9e0588e0a30aab327fa3fd236a1913a16efa5e88fd3e502eb200`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bullseye' '@1785715200'
# Fri, 21 Aug 2026 19:05:43 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 19:05:43 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 21 Aug 2026 19:05:43 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 19:05:43 GMT
ENV LEIN_VERSION=2.13.0
# Fri, 21 Aug 2026 19:05:43 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 21 Aug 2026 19:05:43 GMT
WORKDIR /tmp
# Fri, 21 Aug 2026 19:06:52 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Fri, 21 Aug 2026 19:06:52 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Fri, 21 Aug 2026 19:06:52 GMT
ENV LEIN_ROOT=1
# Fri, 21 Aug 2026 19:06:54 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Fri, 21 Aug 2026 19:06:54 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 21 Aug 2026 19:06:54 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 21 Aug 2026 19:06:54 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:93e0ff6a69cbbe5e567bea0ae7560cdd816fd4205541e7cb6b0fd3998b169541`  
		Last Modified: Tue, 04 Aug 2026 23:51:59 GMT  
		Size: 28.7 MB (28748907 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d8e704eca08da117ebeb16297a05fea70917e6cc9cd4d0aad4d0979b80d86b4`  
		Last Modified: Fri, 21 Aug 2026 19:07:16 GMT  
		Size: 156.4 MB (156401988 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e1891b729e346853ebd87c521f2b56f789d27a88ec205f83a6b3ccd65bde8a3`  
		Last Modified: Fri, 21 Aug 2026 19:07:13 GMT  
		Size: 15.6 MB (15631064 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:968975c2af7513df719a0a25b69bb0659484f3c928ce4cadbfd1a9b217f0a637`  
		Last Modified: Fri, 21 Aug 2026 19:07:12 GMT  
		Size: 4.5 MB (4515179 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8802c81a5a548732d344dfb7ba86a2ccd73779d6f11c9b883a55e933b15f2b4f`  
		Last Modified: Fri, 21 Aug 2026 19:07:12 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-2.13.0-bullseye-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:002a948e1f4c2dfb6554b9edf2dd1eaed132cb7704faed20717b8ee546c2a665
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 MB (3061668 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:536f1e7e7c7518a841a9f83bab008c0166f4240f522aa9ff2e91d7405ea50a6d`

```dockerfile
```

-	Layers:
	-	`sha256:8511cd1274c5f51a3ce129aabaec6a521e1466aee6b842878940595c05cd0644`  
		Last Modified: Fri, 21 Aug 2026 19:07:12 GMT  
		Size: 3.0 MB (3043774 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8e6357ad97eb9ccbecc8b9df9ff7e297bd4483aafd37c029a063cbe5196d72d9`  
		Last Modified: Fri, 21 Aug 2026 19:07:12 GMT  
		Size: 17.9 KB (17894 bytes)  
		MIME: application/vnd.in-toto+json
