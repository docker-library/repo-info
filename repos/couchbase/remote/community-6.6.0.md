## `couchbase:community-6.6.0`

```console
$ docker pull couchbase@sha256:3d3a3d8ffb7462a5a3885807f79b288493f036f4316d55a6a5f997ad22dab853
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	linux; amd64

### `couchbase:community-6.6.0` - linux; amd64

```console
$ docker pull couchbase@sha256:1db31135f99f02d43c1f48838530c4c0751398db394cc768923a9e46fcc83799
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **352.5 MB (352518456 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee746b929b03bab7d4cd634ad19bcabf99d7d116f51af5f709519476de048991`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

```dockerfile
# Mon, 02 Jan 2023 18:48:55 GMT
ADD file:132da97f77ddc534ddb931a461d83ac2aa601dd4481360c874eac33b6c3470d9 in / 
# Mon, 02 Jan 2023 18:48:56 GMT
CMD ["bash"]
# Mon, 02 Jan 2023 19:20:09 GMT
LABEL maintainer=docker@couchbase.com
# Mon, 02 Jan 2023 19:20:10 GMT
ARG UPDATE_COMMAND=apt-get update -y -q
# Mon, 02 Jan 2023 19:20:10 GMT
ARG CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Mon, 02 Jan 2023 19:20:27 GMT
# ARGS: CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* UPDATE_COMMAND=apt-get update -y -q
RUN set -x     && ${UPDATE_COMMAND}     && apt-get install -y -q wget tzdata       lsof lshw sysstat net-tools numactl bzip2 runit     && ${CLEANUP_COMMAND}
# Mon, 02 Jan 2023 19:20:27 GMT
ARG CB_RELEASE_URL=https://packages.couchbase.com/releases/6.6.0
# Mon, 02 Jan 2023 19:20:27 GMT
ARG CB_PACKAGE=couchbase-server-community_6.6.0-ubuntu18.04_amd64.deb
# Mon, 02 Jan 2023 19:20:27 GMT
ARG CB_SHA256=9b196cd7be81d7d6b179838e9d30164fdb7a1f27e96678e61e24e9fe5c93f559
# Mon, 02 Jan 2023 19:20:27 GMT
ARG CB_SKIP_CHECKSUM=false
# Mon, 02 Jan 2023 19:20:28 GMT
ARG CB_PACKAGE_NAME=couchbase-server-community
# Mon, 02 Jan 2023 19:20:28 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Mon, 02 Jan 2023 19:20:28 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_6.6.0-ubuntu18.04_amd64.deb CB_PACKAGE_NAME=couchbase-server-community CB_RELEASE_URL=https://packages.couchbase.com/releases/6.6.0 CB_SHA256=9b196cd7be81d7d6b179838e9d30164fdb7a1f27e96678e61e24e9fe5c93f559 CB_SKIP_CHECKSUM=false CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* UPDATE_COMMAND=apt-get update -y -q
RUN groupadd -g 1000 couchbase && useradd couchbase -u 1000 -g couchbase -M
# Mon, 02 Jan 2023 19:21:04 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_6.6.0-ubuntu18.04_amd64.deb CB_PACKAGE_NAME=couchbase-server-community CB_RELEASE_URL=https://packages.couchbase.com/releases/6.6.0 CB_SHA256=9b196cd7be81d7d6b179838e9d30164fdb7a1f27e96678e61e24e9fe5c93f559 CB_SKIP_CHECKSUM=false CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* UPDATE_COMMAND=apt-get update -y -q
RUN set -x     && export INSTALL_DONT_START_SERVER=1     && wget -N --no-verbose $CB_RELEASE_URL/$CB_PACKAGE     && { ${CB_SKIP_CHECKSUM} || echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - ; }     && ${UPDATE_COMMAND}     && dpkg --unpack ./$CB_PACKAGE     && sed -i -e '/Best heuristic/ a \ \ \ \ [ -d /run/systemd/system ] && return 1; return 0' /opt/couchbase/bin/install/systemd-ctl     && dpkg --configure couchbase-server-community     && apt-get install -yf     && rm -f ./$CB_PACKAGE     && ${CLEANUP_COMMAND}     && rm -rf /tmp/* /var/tmp/*
# Mon, 02 Jan 2023 19:21:07 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_6.6.0-ubuntu18.04_amd64.deb CB_PACKAGE_NAME=couchbase-server-community CB_RELEASE_URL=https://packages.couchbase.com/releases/6.6.0 CB_SHA256=9b196cd7be81d7d6b179838e9d30164fdb7a1f27e96678e61e24e9fe5c93f559 CB_SKIP_CHECKSUM=false CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* UPDATE_COMMAND=apt-get update -y -q
RUN sed -i -e '1 s/$/\/docker/' /opt/couchbase/VARIANT.txt
# Mon, 02 Jan 2023 19:21:07 GMT
COPY file:018fa38d92aa0a4679f57c2d43b5c14547b2c603cab6ec7fd3240af5545472b5 in /etc/service/couchbase-server/run 
# Mon, 02 Jan 2023 19:21:07 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_6.6.0-ubuntu18.04_amd64.deb CB_PACKAGE_NAME=couchbase-server-community CB_RELEASE_URL=https://packages.couchbase.com/releases/6.6.0 CB_SHA256=9b196cd7be81d7d6b179838e9d30164fdb7a1f27e96678e61e24e9fe5c93f559 CB_SKIP_CHECKSUM=false CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* UPDATE_COMMAND=apt-get update -y -q
RUN set -x     && mkdir -p /etc/runit/runsvdir/default/couchbase-server/supervise     && chown -R couchbase:couchbase                 /etc/service                 /etc/runit/runsvdir/default/couchbase-server/supervise
# Mon, 02 Jan 2023 19:21:07 GMT
COPY file:1302333e9e56b11ae357341056dee0080efda9457b1ce3de1a1ecb6023e760ae in /usr/local/bin/ 
# Mon, 02 Jan 2023 19:21:08 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_6.6.0-ubuntu18.04_amd64.deb CB_PACKAGE_NAME=couchbase-server-community CB_RELEASE_URL=https://packages.couchbase.com/releases/6.6.0 CB_SHA256=9b196cd7be81d7d6b179838e9d30164fdb7a1f27e96678e61e24e9fe5c93f559 CB_SKIP_CHECKSUM=false CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* UPDATE_COMMAND=apt-get update -y -q
RUN set -x     && ln -s dummy.sh /usr/local/bin/iptables-save     && ln -s dummy.sh /usr/local/bin/lvdisplay     && ln -s dummy.sh /usr/local/bin/vgdisplay     && ln -s dummy.sh /usr/local/bin/pvdisplay
# Mon, 02 Jan 2023 19:21:17 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_6.6.0-ubuntu18.04_amd64.deb CB_PACKAGE_NAME=couchbase-server-community CB_RELEASE_URL=https://packages.couchbase.com/releases/6.6.0 CB_SHA256=9b196cd7be81d7d6b179838e9d30164fdb7a1f27e96678e61e24e9fe5c93f559 CB_SKIP_CHECKSUM=false CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* UPDATE_COMMAND=apt-get update -y -q
RUN set -ex     &&  if [ ! -e /opt/couchbase/bin/curl.real ]; then             ${UPDATE_COMMAND};             apt-get install -y chrpath;             chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl;             apt-get remove -y chrpath;             apt-get autoremove -y;             ${CLEANUP_COMMAND};         fi
# Mon, 02 Jan 2023 19:21:17 GMT
COPY file:6e5292e89c7124e038a0d80ea3b942bff1ed578e67a07e764b041ea95b129aa3 in / 
# Mon, 02 Jan 2023 19:21:17 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 02 Jan 2023 19:21:17 GMT
CMD ["couchbase-server"]
# Mon, 02 Jan 2023 19:21:17 GMT
EXPOSE 11207 11210 11211 18091 18092 18093 18094 18095 18096 8091 8092 8093 8094 8095 8096
# Mon, 02 Jan 2023 19:21:17 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:a055bf07b5b05332897ea9a464c5e76a507fafe72fa21370d3fccaf07d55f360`  
		Last Modified: Thu, 15 Dec 2022 21:00:39 GMT  
		Size: 26.7 MB (26711442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b315c2c325e34ce3df1afdd6d5161f37a4bc8d59894b733af83c2f47c46174ab`  
		Last Modified: Mon, 02 Jan 2023 19:21:56 GMT  
		Size: 5.6 MB (5606150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b054a6b1bd96e24945c0d2f1ea2e949dec83f0c1c05edaffdedad08cab3432bc`  
		Last Modified: Mon, 02 Jan 2023 19:21:55 GMT  
		Size: 2.0 KB (1964 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:101457229f431545e17f3a69ed2d8a7c3ae65eaca7b7a1a3a7701ea88cba4064`  
		Last Modified: Mon, 02 Jan 2023 19:22:30 GMT  
		Size: 319.8 MB (319763061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c9606b803dd91070cc4b59e239e187e6883bc9720a68bda9d173c3e2c0b47f8`  
		Last Modified: Mon, 02 Jan 2023 19:21:55 GMT  
		Size: 191.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db058941af45adc5401af7a15dee7db9e6e19050035b2cd57bb8ddb4adccd104`  
		Last Modified: Mon, 02 Jan 2023 19:21:55 GMT  
		Size: 740.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9b9695fe151ae1d5ea32f18a5f037a8ddf53a942ea5dcb508441f0c9e7aac45`  
		Last Modified: Mon, 02 Jan 2023 19:21:53 GMT  
		Size: 278.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe3267999616397b30e31bcd821ed707c9a912258b2321dd25b1f9cba3361d71`  
		Last Modified: Mon, 02 Jan 2023 19:21:53 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99e094b4de8d624f4d8b61835f072a25f7bf3119cf88cbc70844e8ea4cbca005`  
		Last Modified: Mon, 02 Jan 2023 19:21:53 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:269faa715a322f276347e7aee704742b2ca135477fafe6d3902847235a3b6ec2`  
		Last Modified: Mon, 02 Jan 2023 19:21:53 GMT  
		Size: 433.3 KB (433306 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f367b05a0a3fdb561862d4a4bc4bc98c043c7adcae87804c7d7ebd75373f2be3`  
		Last Modified: Mon, 02 Jan 2023 19:21:53 GMT  
		Size: 868.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
