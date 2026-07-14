## `clojure:temurin-26-lein-bullseye-slim`

```console
$ docker pull clojure@sha256:49e61f044dcf334dd2a743ee4c0cbc531e06e227f85837563613999318f7afec
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clojure:temurin-26-lein-bullseye-slim` - linux; amd64

```console
$ docker pull clojure@sha256:7391303af906dbdcf5a940340006b11789d21e9daa1a8f6eb00cd3c058256f40
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **144.9 MB (144944568 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef03d12e4fc53ff1839689028d7024f40d778b3ad95d7902832c05c9bc43b4ec`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bullseye' '@1783900800'
# Tue, 14 Jul 2026 02:23:20 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 14 Jul 2026 02:23:20 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 14 Jul 2026 02:23:20 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 02:23:20 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 14 Jul 2026 02:23:20 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 14 Jul 2026 02:23:20 GMT
WORKDIR /tmp
# Tue, 14 Jul 2026 02:24:26 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 14 Jul 2026 02:24:26 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 14 Jul 2026 02:24:26 GMT
ENV LEIN_ROOT=1
# Tue, 14 Jul 2026 02:24:28 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 14 Jul 2026 02:24:28 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 14 Jul 2026 02:24:28 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 14 Jul 2026 02:24:28 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:ab6b8caf16d7f68b8a98637a233a98f662552e76d428a4510f2c6950bbe017f9`  
		Last Modified: Tue, 14 Jul 2026 00:14:38 GMT  
		Size: 30.3 MB (30259754 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e7a96e200e364de091f229907ceda3cae71126ed498a153524eeb6c46068cfd`  
		Last Modified: Tue, 14 Jul 2026 02:24:47 GMT  
		Size: 94.5 MB (94524294 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:049550514914c0e73e2254e1c741593747d4409c031171981b2d9145b6a8efde`  
		Last Modified: Tue, 14 Jul 2026 02:24:44 GMT  
		Size: 15.6 MB (15644881 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8d61f1cdf82334ee3933e1e98bf75afbb46537d81c16769c934d392d0eaf9df`  
		Last Modified: Tue, 14 Jul 2026 02:24:44 GMT  
		Size: 4.5 MB (4515210 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68c9b344b968245fc693dc0379312782df3b82b67f961f5688e070ba55a9bf1e`  
		Last Modified: Tue, 14 Jul 2026 02:24:44 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-lein-bullseye-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:33a41c5aa31b3044ce4eef9598353c28f957191fb74dd0e6ded93b910b1011c3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (3019769 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b3cced31ae822f049752bd65a4592d0763d6ebcb3adfc9c0684efe8e03952ce2`

```dockerfile
```

-	Layers:
	-	`sha256:c6a2c4dc41a24d7d29dcc5d59f438ca0cb9f69352028f872ecd7c50f958c2b67`  
		Last Modified: Tue, 14 Jul 2026 02:24:44 GMT  
		Size: 3.0 MB (3002003 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:eff400c63c777b143d2b2e465af9512f18678620f502f91125562c9c51afc7ae`  
		Last Modified: Tue, 14 Jul 2026 02:24:43 GMT  
		Size: 17.8 KB (17766 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-lein-bullseye-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:f42c93040c978e353e08f19b3b83520b7e984563b84302569d5c177885d7e9dd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **142.4 MB (142401250 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0de7c25875604b7f4183fb116e2ddaa30d7f225151eeb5a1feaaa5cc86adc7c7`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bullseye' '@1783900800'
# Tue, 14 Jul 2026 02:30:15 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 14 Jul 2026 02:30:15 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 14 Jul 2026 02:30:15 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 02:30:15 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 14 Jul 2026 02:30:15 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 14 Jul 2026 02:30:15 GMT
WORKDIR /tmp
# Tue, 14 Jul 2026 02:31:25 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 14 Jul 2026 02:31:25 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 14 Jul 2026 02:31:25 GMT
ENV LEIN_ROOT=1
# Tue, 14 Jul 2026 02:31:27 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 14 Jul 2026 02:31:27 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 14 Jul 2026 02:31:27 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 14 Jul 2026 02:31:27 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:61f836bad84b9e0ba9e3fe1a558be02d0d6378b8ecb4f3c1ef8f656e9e30e1f5`  
		Last Modified: Tue, 14 Jul 2026 00:14:15 GMT  
		Size: 28.7 MB (28748984 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:711717f49c6ebc800a251723c175446d2a80f0f8ea2e2703c1147dfbb0b85365`  
		Last Modified: Tue, 14 Jul 2026 02:31:46 GMT  
		Size: 93.5 MB (93504360 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b340a241d9763811ffaeb9e342fc3a46dcd1aafb188d668e2e8afe5739aa2a6`  
		Last Modified: Tue, 14 Jul 2026 02:31:44 GMT  
		Size: 15.6 MB (15632249 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4a2774ffd5af4b2d407a046f7eadcb5e6e5dcba963c914468c758ebc4badd85`  
		Last Modified: Tue, 14 Jul 2026 02:31:44 GMT  
		Size: 4.5 MB (4515228 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1aee7cd5e81e0ca007547444c02d2ac1b52941de6f79d6a7affe39bcffe3da29`  
		Last Modified: Tue, 14 Jul 2026 02:31:44 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-lein-bullseye-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:617691bfa08923d3bfc12047cba8dfb456d48f665a23b6bc071399f0363dfa0a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (3019496 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ed0fc5497ac010688be75d21f88c73428be0cc877b5a0537e6d4c2e8ec61cde6`

```dockerfile
```

-	Layers:
	-	`sha256:7a7db9a2b3940d5e728d9e85e3c406fde526517cc55d8b38acd90fff1f301288`  
		Last Modified: Tue, 14 Jul 2026 02:31:44 GMT  
		Size: 3.0 MB (3001609 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7af7387155487639276e97bc2382fd438724e377573f4ec0154e713e8cbb9a40`  
		Last Modified: Tue, 14 Jul 2026 02:31:43 GMT  
		Size: 17.9 KB (17887 bytes)  
		MIME: application/vnd.in-toto+json
