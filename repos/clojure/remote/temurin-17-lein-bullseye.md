## `clojure:temurin-17-lein-bullseye`

```console
$ docker pull clojure@sha256:d48ceb80c7225dc27fd23693c27bdf24d469934aeb7486b7c3f0c178ff63b69a
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clojure:temurin-17-lein-bullseye` - linux; amd64

```console
$ docker pull clojure@sha256:a61805c3d7e5dc746e9d5e9b6db0a306d6a66cd940dfb27849ea84a5ad4db68d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **221.1 MB (221138751 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4093b144be467ca0401f1a8b5417ce26ca1bdc13b298fffbf21e9254a552661c`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bullseye' '@1783900800'
# Tue, 14 Jul 2026 02:18:30 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 14 Jul 2026 02:18:30 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 14 Jul 2026 02:18:30 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 02:18:30 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 14 Jul 2026 02:18:30 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 14 Jul 2026 02:18:30 GMT
WORKDIR /tmp
# Tue, 14 Jul 2026 02:19:37 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 14 Jul 2026 02:19:37 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 14 Jul 2026 02:19:37 GMT
ENV LEIN_ROOT=1
# Tue, 14 Jul 2026 02:19:38 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 14 Jul 2026 02:19:38 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 14 Jul 2026 02:19:38 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 14 Jul 2026 02:19:38 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:67de115811dc004af37113c6aa85eaaeb7c71fbf7fb79c2219111439cbf76c90`  
		Last Modified: Tue, 14 Jul 2026 00:14:39 GMT  
		Size: 53.8 MB (53776576 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8293e4fd2c002c5a7f2ae469a78690ff33dc11bab8a0b8c55e113d4a6dbc71e`  
		Last Modified: Tue, 14 Jul 2026 02:20:02 GMT  
		Size: 145.9 MB (145906288 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b42272ab83fad049b54d76f3e7120bd7e61f086286e35d912611b74bd0af3c8`  
		Last Modified: Tue, 14 Jul 2026 02:19:59 GMT  
		Size: 16.9 MB (16940274 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87aa0743c062551f31056268e48a94f0b747996aa4750deca14d7b1bf44b7487`  
		Last Modified: Tue, 14 Jul 2026 02:19:58 GMT  
		Size: 4.5 MB (4515184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e18867cb049cb22e86c0eb913808cf0caf1f009e35c5b61b9f6b7000958b824`  
		Last Modified: Tue, 14 Jul 2026 02:19:58 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-bullseye` - unknown; unknown

```console
$ docker pull clojure@sha256:9d3f7623bbcb89f068bed1f1cbcf2132ad0efc271b4600a07796e46bbba3063e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.5 MB (4518765 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:263abe62208efe9bd42b63c52f2fe302d4da7c12891cd4cd35bc1742ba7d2406`

```dockerfile
```

-	Layers:
	-	`sha256:54af69564b962e56e12efdacbe61d8d0bfcae927e976dd922777e683f0e2606a`  
		Last Modified: Tue, 14 Jul 2026 02:19:58 GMT  
		Size: 4.5 MB (4501027 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:eb1508032f1852312874fc7e9ac0cd2889c7f4a543e2b47debc0bfcd866aa9f5`  
		Last Modified: Tue, 14 Jul 2026 02:19:57 GMT  
		Size: 17.7 KB (17738 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-lein-bullseye` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:d9eab21b0d393fbfb537c0d47fab7e23e5d9f2276b03e7be632b3ab432ae1193
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **218.4 MB (218428934 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:434a78df26089db29e38ef70f3c8eab644b972fdabbbfb78c63c44e8bb132bfb`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bullseye' '@1783900800'
# Tue, 14 Jul 2026 02:25:27 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 14 Jul 2026 02:25:27 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 14 Jul 2026 02:25:27 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 02:25:27 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 14 Jul 2026 02:25:27 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 14 Jul 2026 02:25:27 GMT
WORKDIR /tmp
# Tue, 14 Jul 2026 02:26:34 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 14 Jul 2026 02:26:34 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 14 Jul 2026 02:26:34 GMT
ENV LEIN_ROOT=1
# Tue, 14 Jul 2026 02:26:36 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 14 Jul 2026 02:26:36 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 14 Jul 2026 02:26:36 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 14 Jul 2026 02:26:36 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:05f35ed13b0f03b4d3292e29957ef64e978b7566be41843c7f2be1cede133720`  
		Last Modified: Tue, 14 Jul 2026 00:14:11 GMT  
		Size: 52.3 MB (52260890 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:047cf350bca66efc6c1ee6e55361404395df208aec05ff93686ac96cc5879a94`  
		Last Modified: Tue, 14 Jul 2026 02:27:00 GMT  
		Size: 144.7 MB (144724328 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c547c7a8c1a76ca97598814614eb405a99988989ab9929579bf6d6780566ca37`  
		Last Modified: Tue, 14 Jul 2026 02:26:57 GMT  
		Size: 16.9 MB (16928075 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:457a698d81406a59a1d62d8899edee5fdc7dc3006545e9f79d4d6f3cd7a0c91e`  
		Last Modified: Tue, 14 Jul 2026 02:26:57 GMT  
		Size: 4.5 MB (4515212 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d98eb71121c72caead7ce0838cf9665edc9ba0047e5e3e62d3c82a1841935fea`  
		Last Modified: Tue, 14 Jul 2026 02:26:56 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-bullseye` - unknown; unknown

```console
$ docker pull clojure@sha256:c2d09efeb9d5edfcdc6d608cf56963da0533ac3e9d06e367f39387bfe44ec0b6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.5 MB (4517860 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:41c3246734e4be4bd999abe1c2a9f051d6cf6501acbcf1aac40547bbf8ba0203`

```dockerfile
```

-	Layers:
	-	`sha256:8c7013cd82227c322ff109e6f436a23bbce6509b6b9298d5a12f83fc6fa9712b`  
		Last Modified: Tue, 14 Jul 2026 02:26:57 GMT  
		Size: 4.5 MB (4500001 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c144eef9388854c176406bcb9e0c94bc51e3dd48e15a704500e86adf3e8354ce`  
		Last Modified: Tue, 14 Jul 2026 02:26:56 GMT  
		Size: 17.9 KB (17859 bytes)  
		MIME: application/vnd.in-toto+json
