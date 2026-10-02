## `clojure:temurin-21-lein`

```console
$ docker pull clojure@sha256:177892db15b34c31031444ba66e3fb8365a75b36775ef5e90c399176ebe89984
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-21-lein` - linux; amd64

```console
$ docker pull clojure@sha256:acaae53475f2ab06949a4fea39db4be2de7ce80cdc0292c38c79190d90f0d406
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **231.3 MB (231283478 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:20795ddc2778a5b2ce9c2236d3161b28c8240a399afb4b75789a86c095a46b55`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1789689600'
# Fri, 02 Oct 2026 02:46:38 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 02 Oct 2026 02:46:38 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 02 Oct 2026 02:46:38 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 02:46:38 GMT
ENV LEIN_VERSION=2.13.0
# Fri, 02 Oct 2026 02:46:38 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 02 Oct 2026 02:46:38 GMT
WORKDIR /tmp
# Fri, 02 Oct 2026 02:47:48 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Fri, 02 Oct 2026 02:47:48 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Fri, 02 Oct 2026 02:47:48 GMT
ENV LEIN_ROOT=1
# Fri, 02 Oct 2026 02:47:50 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Fri, 02 Oct 2026 02:47:50 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 02 Oct 2026 02:47:50 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 02 Oct 2026 02:47:50 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:eaac70c68abdf6ffacf6de10d31ed9de4813505d1a794eb7393cb27fceb624a6`  
		Last Modified: Sat, 19 Sep 2026 00:03:03 GMT  
		Size: 48.5 MB (48503440 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2e39193d8e2be1c5498da05ef74833dffbbf8dbe001708cba85019a42755d65`  
		Last Modified: Fri, 02 Oct 2026 02:48:12 GMT  
		Size: 158.1 MB (158117533 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af42a9ab29839e70e247484918cef5cd50bd16be84af3c2b7c4160a6dee7db8e`  
		Last Modified: Fri, 02 Oct 2026 02:48:09 GMT  
		Size: 20.1 MB (20146847 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d647b567e53635c32077065f974fe8ca66f703e1eb6e6fb1dab6dc5081650d0`  
		Last Modified: Fri, 02 Oct 2026 02:48:09 GMT  
		Size: 4.5 MB (4515230 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:555510aad1e6c3b5c90c827d22916e0ff9ba6f5049dba17bd6e105d9e4795bf8`  
		Last Modified: Fri, 02 Oct 2026 02:48:09 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein` - unknown; unknown

```console
$ docker pull clojure@sha256:33069b79b6243bc22b7c3a390ea8ea101a2b00eeb303aba08a82f10800c034d2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4310189 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:864b136255cdc2e5f560c3a2f5b380753748ab5b0717b96746325c0a711b5c57`

```dockerfile
```

-	Layers:
	-	`sha256:61af01ca7709f7dca6bf51747c45a12bfee77d726c6de436805a265f23d01995`  
		Last Modified: Fri, 02 Oct 2026 02:48:09 GMT  
		Size: 4.3 MB (4291801 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:25a90ded42b0c60ce6daaf12900d7bd65bdae9ab2b1258b3945baf175d3406c4`  
		Last Modified: Fri, 02 Oct 2026 02:48:08 GMT  
		Size: 18.4 KB (18388 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-lein` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:48a771ec3880db0ee9e1e2102c39ccac6873532d6ed37202f391bfeebaa8a307
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.3 MB (229273828 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c649ba8c25a5f8819110b80f11592d575eb6b537d1bbd416e802133d9414a20`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1789689600'
# Fri, 02 Oct 2026 02:46:27 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 02 Oct 2026 02:46:27 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 02 Oct 2026 02:46:27 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 02:46:27 GMT
ENV LEIN_VERSION=2.13.0
# Fri, 02 Oct 2026 02:46:27 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 02 Oct 2026 02:46:27 GMT
WORKDIR /tmp
# Fri, 02 Oct 2026 02:47:39 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Fri, 02 Oct 2026 02:47:39 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Fri, 02 Oct 2026 02:47:39 GMT
ENV LEIN_ROOT=1
# Fri, 02 Oct 2026 02:47:41 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Fri, 02 Oct 2026 02:47:41 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 02 Oct 2026 02:47:41 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 02 Oct 2026 02:47:41 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:450fe15cad1eddfa7c19e4191f4de2d5c46b0c201ddee1db8d6f41d2fec7a742`  
		Last Modified: Sat, 19 Sep 2026 00:02:48 GMT  
		Size: 48.4 MB (48389910 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21a605111a1d28020ccbe61b856782efc577bef75ada1d59862dc906289b1398`  
		Last Modified: Fri, 02 Oct 2026 02:48:04 GMT  
		Size: 156.4 MB (156400658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b875c52b78749abe678ac7fc63c2667b20ad8fa491c3e0492e15a6d1df47176c`  
		Last Modified: Fri, 02 Oct 2026 02:48:01 GMT  
		Size: 20.0 MB (19967609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8b706e5e42c961b4f496c17064242fed138192b674962b66f7c6379380a1314`  
		Last Modified: Fri, 02 Oct 2026 02:48:00 GMT  
		Size: 4.5 MB (4515221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3516489baf4cd43e85d71b1019f7682c3a1e06a524e50b344f419123f6dd08c`  
		Last Modified: Fri, 02 Oct 2026 02:48:00 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein` - unknown; unknown

```console
$ docker pull clojure@sha256:e1925e43b01d523a4c1fe1ac245b790ee8aca9161f40a89f10498c6dc3a8c22b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4309973 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:87f003fb93e61ec4ef26aba556463d2509c38f5a58a1c0d0cc2786c7b16d1a89`

```dockerfile
```

-	Layers:
	-	`sha256:bba07fbd2facb967faf0cd98b93195ad9e9cf8f7f62c1e31cd573538b96fcb7f`  
		Last Modified: Fri, 02 Oct 2026 02:48:00 GMT  
		Size: 4.3 MB (4291440 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ae1f1eadd4c2a89f2619a2aeeef8c0d0a98e0edc5282de6b64d381c8eccba768`  
		Last Modified: Fri, 02 Oct 2026 02:47:59 GMT  
		Size: 18.5 KB (18533 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-lein` - linux; ppc64le

```console
$ docker pull clojure@sha256:af140843fda768221ee4360c8642dc76e97637ef876f67a682c49ef4797cebfc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **235.5 MB (235505576 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b5a5a88c0bf749d7f0e717d9ad03cfc36162064f5762dfff18ea61e44a52b1ce`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1789689600'
# Sat, 26 Sep 2026 04:50:57 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 26 Sep 2026 04:50:57 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 26 Sep 2026 04:50:57 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 26 Sep 2026 04:50:57 GMT
ENV LEIN_VERSION=2.13.0
# Sat, 26 Sep 2026 04:50:57 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Sat, 26 Sep 2026 04:50:57 GMT
WORKDIR /tmp
# Sat, 26 Sep 2026 04:53:09 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Sat, 26 Sep 2026 04:53:09 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Sat, 26 Sep 2026 04:53:09 GMT
ENV LEIN_ROOT=1
# Sat, 26 Sep 2026 04:53:13 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Sat, 26 Sep 2026 04:53:13 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sat, 26 Sep 2026 04:53:13 GMT
ENTRYPOINT ["entrypoint"]
# Sat, 26 Sep 2026 04:53:13 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:303f9548080ec7733e94ce124ddb2d901dc024b0db2d3e171bdfe62a1d04513b`  
		Last Modified: Sat, 19 Sep 2026 00:02:50 GMT  
		Size: 52.3 MB (52349305 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3eb6bf326805d33db5f2eeb52843cedf33600a8cff5a57e18937a394c05f6f08`  
		Last Modified: Sat, 26 Sep 2026 04:53:55 GMT  
		Size: 158.3 MB (158282667 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1d0e39a42c4dd0bc6687bb507cce15e9a5ef893c21c9563f90eddc01e13f7fc`  
		Last Modified: Sat, 26 Sep 2026 04:53:52 GMT  
		Size: 20.4 MB (20357938 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87b135a3f5b912cff2a668e5f42610c39189e1aa63746d633250442ecca74a0d`  
		Last Modified: Sat, 26 Sep 2026 04:53:52 GMT  
		Size: 4.5 MB (4515236 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43fe53a34b94bb26ad8c750e163b546e772d0137e2691ae4e988de2fc56d9874`  
		Last Modified: Sat, 26 Sep 2026 04:53:52 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein` - unknown; unknown

```console
$ docker pull clojure@sha256:6b35bd8e48cf56de6bf604a6805f31eb332bb2da34378cfeb8274e8dd5597692
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4312118 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:305af68e5aba6265eba013ca9689b5751b9700ad7a82269e1c04a880066df42f`

```dockerfile
```

-	Layers:
	-	`sha256:0879acc5d2e33a7c518390d4c285c1c59244759febe6868af2238fbe08304d8f`  
		Last Modified: Fri, 02 Oct 2026 08:15:47 GMT  
		Size: 4.3 MB (4293674 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:849c8f42143998c4035150a27c10bb28dfe59e8a8d0d935669ebbcbe8e0ed314`  
		Last Modified: Fri, 02 Oct 2026 08:15:46 GMT  
		Size: 18.4 KB (18444 bytes)  
		MIME: application/vnd.in-toto+json
