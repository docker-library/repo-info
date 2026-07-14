## `clojure:temurin-17-lein-2.13.0-trixie-slim`

```console
$ docker pull clojure@sha256:1bfa6fe29a8cad11771a2594cf129fb6ad751a84ef9a31293c1dc878f706334b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 8
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `clojure:temurin-17-lein-2.13.0-trixie-slim` - linux; amd64

```console
$ docker pull clojure@sha256:0518072ef7f76a03de79c38e1e070cc7fa98151254c8852358296cecb5005c25
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **197.0 MB (196958505 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e27f7a1332c2942729c7b4c9a7a8537843beef6540b776322c5963144ecf8af`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 02:18:41 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 14 Jul 2026 02:18:41 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 14 Jul 2026 02:18:41 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 02:18:41 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 14 Jul 2026 02:18:41 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 14 Jul 2026 02:18:41 GMT
WORKDIR /tmp
# Tue, 14 Jul 2026 02:19:50 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 14 Jul 2026 02:19:50 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 14 Jul 2026 02:19:50 GMT
ENV LEIN_ROOT=1
# Tue, 14 Jul 2026 02:19:52 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 14 Jul 2026 02:19:52 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 14 Jul 2026 02:19:52 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 14 Jul 2026 02:19:52 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:062e450697faa5f02a3a74eba9864ee4d79bc9cfbd65769fc6cdff2c05c6a053`  
		Last Modified: Tue, 14 Jul 2026 00:14:56 GMT  
		Size: 29.8 MB (29780905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70f5474c74175f29b94b75a9327b11a60ac4462eedbc250daae2de77562de050`  
		Last Modified: Tue, 14 Jul 2026 02:19:17 GMT  
		Size: 145.9 MB (145906310 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dba8c703554f8b1408e2ea3e456f3ecbbced4e9b4e0a5844bf6dd13938b9f2a1`  
		Last Modified: Tue, 14 Jul 2026 02:20:07 GMT  
		Size: 16.8 MB (16755656 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e92b307607077e53dece98e377b3f853840addfbbac3c94c740824a3e685dc0`  
		Last Modified: Tue, 14 Jul 2026 02:20:07 GMT  
		Size: 4.5 MB (4515206 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6fbc1e8728e18714059203b04a4015c7abecd4145fed68b574a66d854deea298`  
		Last Modified: Tue, 14 Jul 2026 02:20:07 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-2.13.0-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:d28d337aee9f8b4db4c39c1cbdc57b8c65be0f40c78873ce7e82cfc2ef826344
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2384870 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f032323de75bb534eafc664a8474503e1c8245905944be2dece510c59ed1a3f1`

```dockerfile
```

-	Layers:
	-	`sha256:6c4bb954692a084b8e0d7aa968eedd07661e1d47959f022df0d7c52a3cf34b26`  
		Last Modified: Tue, 14 Jul 2026 02:20:07 GMT  
		Size: 2.4 MB (2367117 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b5cdfdd14e948162d426caeef978652fba7bf5b72fffad2fdf904344b249ef42`  
		Last Modified: Tue, 14 Jul 2026 02:20:07 GMT  
		Size: 17.8 KB (17753 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-lein-2.13.0-trixie-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:a14a85cab1d540aa55285adc6721baa37276024e52a9615a782a211b9bfc7752
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **196.1 MB (196104740 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f2239f7c2ba37256c9cade5e56dd1ef356bad2a06a8985669b97f1477f568cc`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 02:25:37 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 14 Jul 2026 02:25:37 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 14 Jul 2026 02:25:37 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 02:25:37 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 14 Jul 2026 02:25:37 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 14 Jul 2026 02:25:37 GMT
WORKDIR /tmp
# Tue, 14 Jul 2026 02:26:56 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 14 Jul 2026 02:26:56 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 14 Jul 2026 02:26:56 GMT
ENV LEIN_ROOT=1
# Tue, 14 Jul 2026 02:26:58 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 14 Jul 2026 02:26:58 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 14 Jul 2026 02:26:58 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 14 Jul 2026 02:26:58 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:59f54fbcd984beca03fd8b78569fa57268ecf78d291c0b6fe1623c2467f5a075`  
		Last Modified: Tue, 14 Jul 2026 00:14:41 GMT  
		Size: 30.1 MB (30143705 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:baa2a4f05d0e4ff67c513719270d0ee8b8ab81d3eed9d9a269f140ccfaa6d27e`  
		Last Modified: Tue, 14 Jul 2026 02:27:18 GMT  
		Size: 144.7 MB (144724317 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44890db2d4192f105defe109d4238d580cc58c196d5be6ec4351370e739d3412`  
		Last Modified: Tue, 14 Jul 2026 02:27:15 GMT  
		Size: 16.7 MB (16721071 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b818000246b5596294b983614ca5ae9d91482a47f99b943602ed175a10353f58`  
		Last Modified: Tue, 14 Jul 2026 02:27:15 GMT  
		Size: 4.5 MB (4515219 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:32dd22338758b750be1204ffd0945f3bc36129be1147fc0728dda1619cdf94d0`  
		Last Modified: Tue, 14 Jul 2026 02:27:14 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-2.13.0-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:e4be0dea0135710692eb3ecb909bf68f753839e5db076dababa31b74f15b0aae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2384600 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8f1b6516c52fe18248970b7b9a9718004deb9e2579a9324e3e671f2fe50024f9`

```dockerfile
```

-	Layers:
	-	`sha256:cc8df3d1c064862891100fc2218900900df62f4fa15bd33dd0801b239cf446b9`  
		Last Modified: Tue, 14 Jul 2026 02:27:15 GMT  
		Size: 2.4 MB (2366727 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:118cb30822095c657d4b9784574b91f8c3ab77159e8d57585059773393b92417`  
		Last Modified: Tue, 14 Jul 2026 02:27:14 GMT  
		Size: 17.9 KB (17873 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-lein-2.13.0-trixie-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:5f66acece7dbf03a1ed2c75431ab2f7a913fb5cf196cc3fea50d07422ea88afe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **200.7 MB (200670312 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d9870cb211f1b1b3cc0b9f84f5f994c1ba317e5c876d37ed138f4a7e803a988`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1782172800'
# Thu, 02 Jul 2026 07:12:32 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 07:12:32 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 07:12:32 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 07:12:32 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 02 Jul 2026 07:12:32 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 02 Jul 2026 07:12:33 GMT
WORKDIR /tmp
# Thu, 02 Jul 2026 07:15:16 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 02 Jul 2026 07:15:16 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 02 Jul 2026 07:15:16 GMT
ENV LEIN_ROOT=1
# Thu, 02 Jul 2026 07:15:19 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 02 Jul 2026 07:15:19 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 02 Jul 2026 07:15:19 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 02 Jul 2026 07:15:19 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:639e1c13483ea279c94219be2736856262d8dd2efeff3e6d309f11a66aba21fb`  
		Last Modified: Wed, 24 Jun 2026 00:30:29 GMT  
		Size: 33.6 MB (33606388 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a98bb09fe2905e280f55a5a18ce330dadbdd8e631d0f11faa306ca11aa04656`  
		Last Modified: Thu, 02 Jul 2026 07:15:54 GMT  
		Size: 145.8 MB (145766183 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:93cee493bbc80b2e30c9c488fc73a83ac4f39c5f8897b667b1a93a5f8da1d401`  
		Last Modified: Thu, 02 Jul 2026 07:15:50 GMT  
		Size: 16.8 MB (16782096 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a62956f63c3432cde6173d95dc836bdb7bbad613c4b482f3316764fa4b419142`  
		Last Modified: Thu, 02 Jul 2026 07:15:50 GMT  
		Size: 4.5 MB (4515216 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b5ab460938780a65a8c92bbd1d1dd02a5a1bf399a5fdb5e5e60f16e7c9bce0d`  
		Last Modified: Thu, 02 Jul 2026 07:15:49 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-2.13.0-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:1f3765d7b044abc93880342f2c063ddf723b0378c6b3b81874a6c1615d55f0ea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2385858 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ab5d75c0530a587ed4182adb42f9508f1feda426426b56e8ac90f478069050a`

```dockerfile
```

-	Layers:
	-	`sha256:0dca64bd1da090b11f4332fe2ef2487928dac110a0294a28eed2174c3b02599e`  
		Last Modified: Thu, 02 Jul 2026 07:15:49 GMT  
		Size: 2.4 MB (2368061 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b9db1d5b1a961616b2b04ac30436e1c88c7b640c2cffc5602a327570ae088418`  
		Last Modified: Thu, 02 Jul 2026 07:15:49 GMT  
		Size: 17.8 KB (17797 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-lein-2.13.0-trixie-slim` - linux; s390x

```console
$ docker pull clojure@sha256:f4d2dde5f9895a9f6e1fbb44479210b039842a7904308cf630d80df1870dd047
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **187.1 MB (187052623 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d932f57652034a1da44bf4002a84a4054911c50c6fa6165a62f494a8bc085cc8`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 04:28:33 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 14 Jul 2026 04:28:33 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 14 Jul 2026 04:28:33 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 04:28:33 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 14 Jul 2026 04:28:33 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 14 Jul 2026 04:28:33 GMT
WORKDIR /tmp
# Tue, 14 Jul 2026 04:29:38 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 14 Jul 2026 04:29:38 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 14 Jul 2026 04:29:38 GMT
ENV LEIN_ROOT=1
# Tue, 14 Jul 2026 04:29:39 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 14 Jul 2026 04:29:39 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 14 Jul 2026 04:29:39 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 14 Jul 2026 04:29:39 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:8b525274d0fff49aeaa3328d03c6a8b56b3b80d0a7a58034d99e75f1e2dad806`  
		Last Modified: Tue, 14 Jul 2026 00:17:35 GMT  
		Size: 29.8 MB (29846632 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:935fa8188e1638b6c2aefff3f233ec4e32a40a42b3b1547563d79e1a61784473`  
		Last Modified: Tue, 14 Jul 2026 04:30:04 GMT  
		Size: 135.9 MB (135910419 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9da4c305e399165a81876c913ea2f7168ceaf73ca1e3175e3fe11684b0273474`  
		Last Modified: Tue, 14 Jul 2026 04:30:01 GMT  
		Size: 16.8 MB (16779960 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee32453058696d85559796fdf08793a86950ae06ec7c1edc0f5d6185d4e172b4`  
		Last Modified: Tue, 14 Jul 2026 04:30:01 GMT  
		Size: 4.5 MB (4515183 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d033c682d618e2589b21cac645db940d49771c81e7f4dd4ecb15979d0a7afda`  
		Last Modified: Tue, 14 Jul 2026 04:30:01 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-2.13.0-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:bc93398dd3a852631bf28189cc5104c9f9f82c503c76c603168853e24f859e9a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2381297 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ec499e6ed830da0f3b9f1dd3875c0542ddd34d82d229fa0aca9214f40af9f50c`

```dockerfile
```

-	Layers:
	-	`sha256:8d04355502c7dba766a6391246934c7711235e15da09a96d9b53fddbddad7554`  
		Last Modified: Tue, 14 Jul 2026 04:30:01 GMT  
		Size: 2.4 MB (2363544 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:216ec77f897ee878d13392cee98fbb539853af60f16190b08a54ea64534d7e83`  
		Last Modified: Tue, 14 Jul 2026 04:30:01 GMT  
		Size: 17.8 KB (17753 bytes)  
		MIME: application/vnd.in-toto+json
