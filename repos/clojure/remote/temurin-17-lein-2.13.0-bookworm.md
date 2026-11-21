## `clojure:temurin-17-lein-2.13.0-bookworm`

```console
$ docker pull clojure@sha256:d4a59a54b0988f05c0527a12fd0367cf2f6895981749b453fea68139068517d8
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-17-lein-2.13.0-bookworm` - linux; amd64

```console
$ docker pull clojure@sha256:f91eca66f40101503c286ede3fe1e74e9ec886388d3afcfa461a721c6f391454
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **219.3 MB (219289458 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f81b106d437f51f850dd3f7c9233c0b378d79e75f3421c85c645615d0c5e5435`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793827419'
# Fri, 20 Nov 2026 18:07:55 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 20 Nov 2026 18:07:55 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 20 Nov 2026 18:07:55 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Nov 2026 18:07:55 GMT
ENV LEIN_VERSION=2.13.0
# Fri, 20 Nov 2026 18:07:55 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 20 Nov 2026 18:07:55 GMT
WORKDIR /tmp
# Fri, 20 Nov 2026 18:09:18 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Fri, 20 Nov 2026 18:09:18 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Fri, 20 Nov 2026 18:09:18 GMT
ENV LEIN_ROOT=1
# Fri, 20 Nov 2026 18:09:19 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Fri, 20 Nov 2026 18:09:19 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 20 Nov 2026 18:09:19 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 20 Nov 2026 18:09:19 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:69245854ad5855991d16224f6abf55855d2d73922785206adea9c5c5988434a0`  
		Last Modified: Thu, 05 Nov 2026 06:15:52 GMT  
		Size: 48.5 MB (48526483 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9672eb21feab04681edcd10712a0716e9a6b436dbc79027fe6c5448c5682ab37`  
		Last Modified: Fri, 20 Nov 2026 18:09:41 GMT  
		Size: 146.1 MB (146114263 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c361494a6cd3e0d166f4b356455ff76bf2f301fb8c3818dc1d522ea809b8979d`  
		Last Modified: Fri, 20 Nov 2026 18:09:39 GMT  
		Size: 20.1 MB (20132592 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:241050dec6bcf58582d439ba944395cd009ab1007504ef92b76a182941e10793`  
		Last Modified: Fri, 20 Nov 2026 18:09:38 GMT  
		Size: 4.5 MB (4515188 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7980caffbeda604c31d33536cbc5e1e6cf0be5a3d1068bbc1933d808e46455b8`  
		Last Modified: Fri, 20 Nov 2026 18:09:38 GMT  
		Size: 900.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-2.13.0-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:75a2d073ef0f4002a6294936e75e6c8f43c2015e931384be307880664fcc2dfa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4305742 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1fbdf0ba7200ad3fddab2b20ba056530db2a8b223c609bf8425bae9da3f8bd4d`

```dockerfile
```

-	Layers:
	-	`sha256:c6fdc0560379860d48e2765a541c1761b21e14709cd19f7ab8adb6feb7be75c5`  
		Last Modified: Fri, 20 Nov 2026 18:09:38 GMT  
		Size: 4.3 MB (4288004 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e8c44f58e7ddd43a36d02a87e0dcecdf18e26a249491e147322d96f84cc809b6`  
		Last Modified: Fri, 20 Nov 2026 18:09:37 GMT  
		Size: 17.7 KB (17738 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-lein-2.13.0-bookworm` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:212c9dfc70e49d7b17981b0caceda355593af39274f02fee9c5d257bdc21e6aa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **217.9 MB (217852832 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c36b0c11273d5f3d6ada36a4306e3a959e0bda761caf0ae4150dc39203d6f12b`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793827419'
# Thu, 12 Nov 2026 01:02:45 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 12 Nov 2026 01:02:45 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 12 Nov 2026 01:02:45 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 12 Nov 2026 01:02:45 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 12 Nov 2026 01:02:45 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 12 Nov 2026 01:02:45 GMT
WORKDIR /tmp
# Thu, 12 Nov 2026 01:03:58 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 12 Nov 2026 01:03:58 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 12 Nov 2026 01:03:58 GMT
ENV LEIN_ROOT=1
# Thu, 12 Nov 2026 01:04:00 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 12 Nov 2026 01:04:00 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 12 Nov 2026 01:04:00 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 12 Nov 2026 01:04:00 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:f59e747f549eda321051637e213896378a19033924e1bfa7ae23a6572729c23c`  
		Last Modified: Thu, 05 Nov 2026 06:15:49 GMT  
		Size: 48.4 MB (48412454 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d2af348dd61183253daeef93ba1fa909cc38ca51b735008b32c11b2a4c4dc85`  
		Last Modified: Thu, 12 Nov 2026 01:04:21 GMT  
		Size: 145.0 MB (144957159 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1b24b0a0aac11710b7887d010c100481096bd123d41ebd00cb09652f1952226`  
		Last Modified: Thu, 12 Nov 2026 01:04:19 GMT  
		Size: 20.0 MB (19967062 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99e1c4d61f36783ec9c3bb5994b5eb28925cc985033c19e5ea6b15d95455fe10`  
		Last Modified: Thu, 12 Nov 2026 01:04:18 GMT  
		Size: 4.5 MB (4515227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6a828711d16eeb942e1626bf41cd0a651661f462e05209177b072d7a95c11b7`  
		Last Modified: Thu, 12 Nov 2026 01:04:18 GMT  
		Size: 898.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-2.13.0-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:294f5052d2872519f61db8584267421b7836558c273c5c5bd6c799f1d1dcaaeb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4305469 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e2a3eededbe5fc533fdc6d8f1006e068c435139dc78cdbb8177ba8a5bf9d6ddf`

```dockerfile
```

-	Layers:
	-	`sha256:80019328a65eced2357dad74393b254e5e9897f6c88ee59d7e410b3fd090070f`  
		Last Modified: Thu, 12 Nov 2026 01:04:18 GMT  
		Size: 4.3 MB (4287611 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f5bb345267899bb88de8618dfdf12ceb60899441296180b6a966dc0b3fe4883f`  
		Last Modified: Thu, 12 Nov 2026 01:04:17 GMT  
		Size: 17.9 KB (17858 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-lein-2.13.0-bookworm` - linux; ppc64le

```console
$ docker pull clojure@sha256:9e4161e2958fd53883f9e9a67abe6455446b5bc60bac668684af89bd8c701bad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **222.1 MB (222134242 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f7036c97bb4e467d57df1ff380e7bfff26a62946bce54866e75c5bd21a8e087d`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1793827419'
# Fri, 20 Nov 2026 19:10:04 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 20 Nov 2026 19:10:04 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 20 Nov 2026 19:10:04 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Nov 2026 19:10:04 GMT
ENV LEIN_VERSION=2.13.0
# Fri, 20 Nov 2026 19:10:04 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 20 Nov 2026 19:10:05 GMT
WORKDIR /tmp
# Fri, 20 Nov 2026 19:13:15 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Fri, 20 Nov 2026 19:13:15 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Fri, 20 Nov 2026 19:13:15 GMT
ENV LEIN_ROOT=1
# Fri, 20 Nov 2026 19:13:18 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Fri, 20 Nov 2026 19:13:19 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 20 Nov 2026 19:13:19 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 20 Nov 2026 19:13:19 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:c97e9d75b2e6da4e3fb7b0af2d3d5cae07d37a754f0b58190bd6a80c332cc2e1`  
		Last Modified: Thu, 05 Nov 2026 06:14:40 GMT  
		Size: 52.4 MB (52368620 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dadbe36c2b57a52313abab30daddc19e147c06473af05412120df0f4df64ffbc`  
		Last Modified: Fri, 20 Nov 2026 19:14:13 GMT  
		Size: 144.9 MB (144892682 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a2b1bfa2560b96556e5c2195fb0fc8338c5474654ccad27da6aa6cd0a98fe752`  
		Last Modified: Fri, 20 Nov 2026 19:14:10 GMT  
		Size: 20.4 MB (20356791 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d9f93179683670397f263ca40dc3e4a053a0d298c41675b8f0dc317a158bade`  
		Last Modified: Fri, 20 Nov 2026 19:14:09 GMT  
		Size: 4.5 MB (4515216 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce633b40856389728d67946b3254deeb949318f992f843aa2d8dc66b8c25f42b`  
		Last Modified: Fri, 20 Nov 2026 19:14:09 GMT  
		Size: 901.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-2.13.0-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:306cc97ef9b7fb6fb5a8ebd0c3dd63af75c0f397c1782433b6c2ed0c83af6727
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4306400 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8fb0a056725dcf417287c12e0375411736e5fe2c79e7401bd53d40a224351f56`

```dockerfile
```

-	Layers:
	-	`sha256:47a3277cb5e6a39dd5a8b01d0f72e30271a5616c0a3e72cdd8305099f875117f`  
		Last Modified: Fri, 20 Nov 2026 19:14:09 GMT  
		Size: 4.3 MB (4288619 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3d17589bceb223ab216528618ce3fe4b4c1b40afde8658f3b1d1dd7c5549ae3d`  
		Last Modified: Fri, 20 Nov 2026 19:14:09 GMT  
		Size: 17.8 KB (17781 bytes)  
		MIME: application/vnd.in-toto+json
