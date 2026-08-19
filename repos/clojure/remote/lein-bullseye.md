## `clojure:lein-bullseye`

```console
$ docker pull clojure@sha256:ddddc27849e2a8012fb9881ac08fb655685a63161895851af3c9be0d428e9ebe
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clojure:lein-bullseye` - linux; amd64

```console
$ docker pull clojure@sha256:0992e28aa4d7f934893fb305cab351c7b5e5de31b2d346044453292354ef2fe0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.8 MB (167807936 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:256f8371c7bdc589ad3c0cdd9a8fdebb590b720dfbf1c83802e5366f7d5945e5`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bullseye' '@1785715200'
# Tue, 18 Aug 2026 20:47:54 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 18 Aug 2026 20:47:54 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 18 Aug 2026 20:47:54 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Aug 2026 20:47:54 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 18 Aug 2026 20:47:54 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 18 Aug 2026 20:47:54 GMT
WORKDIR /tmp
# Tue, 18 Aug 2026 20:49:05 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 18 Aug 2026 20:49:05 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 18 Aug 2026 20:49:05 GMT
ENV LEIN_ROOT=1
# Tue, 18 Aug 2026 20:49:07 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 18 Aug 2026 20:49:07 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 18 Aug 2026 20:49:07 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 18 Aug 2026 20:49:07 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:accfb92e6c6ad5d206b68e1bfd8a6c2af4ae82f9b6cc6eafe49675a0655e0742`  
		Last Modified: Tue, 04 Aug 2026 23:52:03 GMT  
		Size: 53.8 MB (53777019 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf4d5862f8544f6d344e3e8c9aad444f413333a3f81b276ac7d33c2321d9f8f7`  
		Last Modified: Tue, 18 Aug 2026 20:49:27 GMT  
		Size: 92.6 MB (92574587 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef135ef74ee400ef75c358e9fd9dd68f594add691827f45ec777da4973b37703`  
		Last Modified: Tue, 18 Aug 2026 20:49:26 GMT  
		Size: 16.9 MB (16940694 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:390865511f1949ad36ad5041e06ebdda8245659aa8aa471831b61df16712c312`  
		Last Modified: Tue, 18 Aug 2026 20:49:25 GMT  
		Size: 4.5 MB (4515207 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0794027dded0cabd47c61937f73388fe8ecb19887628b2dc300393bf6cf76cbe`  
		Last Modified: Tue, 18 Aug 2026 20:49:25 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:lein-bullseye` - unknown; unknown

```console
$ docker pull clojure@sha256:4d79be064b9f42b3995bc24dcb018c860922c4280cf506e77c371bae7fac328b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.5 MB (4492637 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d5e894c54d282e689fd0e204b4a5259705d8cc309ab15e3fe6275c1a241757c`

```dockerfile
```

-	Layers:
	-	`sha256:a31cf4aae6d61d1819ef028418315d8174526a666d8eeb493728c8276659072b`  
		Last Modified: Tue, 18 Aug 2026 20:49:25 GMT  
		Size: 4.5 MB (4474266 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:350fee810d10e7daa463b485755c7844c92d505a107a220f4cc9d50477c3f07c`  
		Last Modified: Tue, 18 Aug 2026 20:49:25 GMT  
		Size: 18.4 KB (18371 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:lein-bullseye` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:5441a8aec60d0f9921ac2f0e70e9724e19f9b6c5d1a8f48657ecdd61f1964cd4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **165.2 MB (165249625 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:45d084e9c9579f305a880e720c9a6371d85b68995dc43f5c10aadbdc127dd58f`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bullseye' '@1785715200'
# Tue, 18 Aug 2026 20:48:09 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 18 Aug 2026 20:48:09 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 18 Aug 2026 20:48:09 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Aug 2026 20:48:09 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 18 Aug 2026 20:48:09 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 18 Aug 2026 20:48:09 GMT
WORKDIR /tmp
# Tue, 18 Aug 2026 20:49:20 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 18 Aug 2026 20:49:20 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 18 Aug 2026 20:49:20 GMT
ENV LEIN_ROOT=1
# Tue, 18 Aug 2026 20:49:22 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 18 Aug 2026 20:49:22 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 18 Aug 2026 20:49:22 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 18 Aug 2026 20:49:22 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:3086cf1958fe5793d805c40e074e8662fbe7bb02df60f5a5dc95718602f4d4e0`  
		Last Modified: Tue, 04 Aug 2026 23:51:56 GMT  
		Size: 52.3 MB (52260902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d7a715e952280b0f05eb2a784dfb89cb1b938fc4b9779b045ae8cf204c11ac9`  
		Last Modified: Tue, 18 Aug 2026 20:49:42 GMT  
		Size: 91.5 MB (91542296 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1323d358f681799fc7352b6be365d2f313cf3d177a5046f55f8acee09e18bd6`  
		Last Modified: Tue, 18 Aug 2026 20:49:41 GMT  
		Size: 16.9 MB (16930788 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62625571b97061354a4c4b1293c424592aed034b0d4bf36312d14d1f82e943a8`  
		Last Modified: Tue, 18 Aug 2026 20:49:40 GMT  
		Size: 4.5 MB (4515209 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9494bccc2d431dbf0bbe024b388349b0b8c80e0909e25695ad5c395e08d49b5f`  
		Last Modified: Tue, 18 Aug 2026 20:49:40 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:lein-bullseye` - unknown; unknown

```console
$ docker pull clojure@sha256:f5b9e6063ef8e67e7d7f145f0e2f48be0baa30fa1621be8dae2df6c15e98f074
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.5 MB (4491779 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8fb73ebf956986c6f9ca82acd0a5770d9f309b3ea7b22c10c0e136d23ab61d40`

```dockerfile
```

-	Layers:
	-	`sha256:5a6d0b90f0886de3e500441e44d4cef0aec9f4207790a08156ba23c2f37fbf08`  
		Last Modified: Tue, 18 Aug 2026 20:49:40 GMT  
		Size: 4.5 MB (4473261 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:74e3ec0f55816435a918c17c277222be3acd758a3a2510c31fcce40c743db106`  
		Last Modified: Tue, 18 Aug 2026 20:49:40 GMT  
		Size: 18.5 KB (18518 bytes)  
		MIME: application/vnd.in-toto+json
