## `clojure:temurin-21-lein-bullseye-slim`

```console
$ docker pull clojure@sha256:46af8f1cca92184a9db28cf211f863a730e12f3de00a56be3863f0fe64a61128
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clojure:temurin-21-lein-bullseye-slim` - linux; amd64

```console
$ docker pull clojure@sha256:fe5d06a337d5fbaaa51ad7d2488e25601f5760372a1b0bd4ad2f82c6153d0da6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **208.6 MB (208586960 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3221a7e66d05aec352ac6e1a099900217ebbed7704d22897c5f387af95c49163`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bullseye' '@1783900800'
# Tue, 14 Jul 2026 02:20:06 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 14 Jul 2026 02:20:06 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 14 Jul 2026 02:20:06 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 02:20:06 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 14 Jul 2026 02:20:06 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 14 Jul 2026 02:20:06 GMT
WORKDIR /tmp
# Tue, 14 Jul 2026 02:21:12 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 14 Jul 2026 02:21:12 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 14 Jul 2026 02:21:12 GMT
ENV LEIN_ROOT=1
# Tue, 14 Jul 2026 02:21:14 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 14 Jul 2026 02:21:14 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 14 Jul 2026 02:21:14 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 14 Jul 2026 02:21:14 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:ab6b8caf16d7f68b8a98637a233a98f662552e76d428a4510f2c6950bbe017f9`  
		Last Modified: Tue, 14 Jul 2026 00:14:38 GMT  
		Size: 30.3 MB (30259754 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:931f646bd3dfe1a5e008ac8d8ac1a3e2eab8a84a766c8adddc4268873ecdcb85`  
		Last Modified: Tue, 14 Jul 2026 02:21:36 GMT  
		Size: 158.2 MB (158166960 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f496fe0f4943d1f3a52958f7e9b6518f041835511cd991ce7fe0629c0f9cb8f`  
		Last Modified: Tue, 14 Jul 2026 02:21:32 GMT  
		Size: 15.6 MB (15644642 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6334d0597fdbc1df1d88fcfbfd361e9f301c6dbcec445aecde55d175965ab0d3`  
		Last Modified: Tue, 14 Jul 2026 02:21:32 GMT  
		Size: 4.5 MB (4515175 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:14099e2f7277fbadf36648048034e40d81dc9a6616c1565a34d528d97a63c1a3`  
		Last Modified: Tue, 14 Jul 2026 02:21:31 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-bullseye-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:d7e163ae9bd0df68276cf081cb8a4fdb042ba5af003ac804992b229895f2e79f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 MB (3056737 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1b8de1f46526defa98922eda8439caf711e186383d98957f1c2285a4b1159131`

```dockerfile
```

-	Layers:
	-	`sha256:e8a9344a107ea2054a04df982ee5fdcde44f069bcc68f8a376640767236c8a44`  
		Last Modified: Tue, 14 Jul 2026 02:21:32 GMT  
		Size: 3.0 MB (3038964 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0491240fe659217e3d091d33783253edbf8f2c238776b2e39854bcb8ed2df1dc`  
		Last Modified: Tue, 14 Jul 2026 02:21:31 GMT  
		Size: 17.8 KB (17773 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-lein-bullseye-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:3f28748ac145cca82e148a26f7fa53c2c6121dbd45f7bab1d49d860d3fcf9a9f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **205.4 MB (205357644 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4025687b9c690a0287fda0c335492cddf471c631e537d87668b137fd4329a09c`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bullseye' '@1783900800'
# Tue, 14 Jul 2026 02:27:06 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 14 Jul 2026 02:27:06 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 14 Jul 2026 02:27:06 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 02:27:06 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 14 Jul 2026 02:27:06 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 14 Jul 2026 02:27:06 GMT
WORKDIR /tmp
# Tue, 14 Jul 2026 02:28:16 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 14 Jul 2026 02:28:16 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 14 Jul 2026 02:28:16 GMT
ENV LEIN_ROOT=1
# Tue, 14 Jul 2026 02:28:17 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 14 Jul 2026 02:28:17 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 14 Jul 2026 02:28:17 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 14 Jul 2026 02:28:17 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:61f836bad84b9e0ba9e3fe1a558be02d0d6378b8ecb4f3c1ef8f656e9e30e1f5`  
		Last Modified: Tue, 14 Jul 2026 00:14:15 GMT  
		Size: 28.7 MB (28748984 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef40a3c03381412e4324f797a091bd6b635fa4978cac80243e6f4a87cd194d82`  
		Last Modified: Tue, 14 Jul 2026 02:28:38 GMT  
		Size: 156.5 MB (156461278 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a52a44214f20b5aa5c0532888c047389240b7c9b4c4727dd0813a08cceef91f`  
		Last Modified: Tue, 14 Jul 2026 02:28:35 GMT  
		Size: 15.6 MB (15631775 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d4d20316e826d9546cc690904b27f0f78b47c75c0bc8ee77787ca47c0ee6912`  
		Last Modified: Tue, 14 Jul 2026 02:28:35 GMT  
		Size: 4.5 MB (4515178 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3a7c8ab41dab9157e12dcaf4f6cd45dda02edec4aac8f6a272f9a0e188429d7`  
		Last Modified: Tue, 14 Jul 2026 02:28:35 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-bullseye-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:f57f764053741126ba2538cb64d88bf8b41709b0d894678dd0dc1f36d61b2e59
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 MB (3056467 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5772cc6cc3c819ee21b2fb566cf3d0b0cabfa3108202fc9789a81501827cbf08`

```dockerfile
```

-	Layers:
	-	`sha256:271d3b779290f87ad267c31494080c37ab1872f8a8996ecf8e9f3bb8ae7feea2`  
		Last Modified: Tue, 14 Jul 2026 02:28:35 GMT  
		Size: 3.0 MB (3038573 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0020836c2b0d7fcba5cf4822a5f2d1c5020d74e11c1c665f9f42236755311e1e`  
		Last Modified: Tue, 14 Jul 2026 02:28:35 GMT  
		Size: 17.9 KB (17894 bytes)  
		MIME: application/vnd.in-toto+json
